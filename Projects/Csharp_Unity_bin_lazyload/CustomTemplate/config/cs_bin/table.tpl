using Bright.Serialization;
using System.Collections.Generic;

namespace {{x.namespace_with_top_module}}
{
   {{ 
        name = x.name
        key_type = x.key_ttype
        key_type1 =  x.key_ttype1
        key_type2 =  x.key_ttype2
        value_type =  x.value_ttype
    }}
{{~if x.comment != '' ~}}
/// <summary>
/// {{x.escape_comment}}
/// </summary>
{{~end~}}
    public partial class {{name}}
    {
        {{~if x.is_map_table ~}}
        private readonly Dictionary<{{cs_define_type key_type}}, {{cs_define_type value_type}}> _dataMap;
        private readonly List<{{cs_define_type value_type}}> _dataList;
        private readonly Dictionary<{{cs_define_type key_type}},int> _indexMap;
        private readonly System.Func<ByteBuf> _dataLoader;
        
        public {{name}}(ByteBuf _buf, string _tbName, System.Func<string, ByteBuf> _loader)
        {
            _dataMap = new Dictionary<{{cs_define_type key_type}}, {{cs_define_type value_type}}>();
            _dataList = new List<{{cs_define_type value_type}}>();
            _indexMap = new Dictionary<{{cs_define_type key_type}}, int>();
            _dataLoader = new System.Func<ByteBuf>(() => _loader(_tbName));
            
            for (int n = _buf.ReadSize(); n > 0; --n)
            {
                {{cs_define_type key_type}} key;
                {{cs_deserialize '_buf' 'key' key_type}}
                int index = _buf.ReadInt();
                _indexMap[key] = index;
            }
            
            PostInit();
        }

        public Dictionary<{{cs_define_type key_type}}, {{cs_define_type value_type}}> DataMap => _dataMap;
        public List<{{cs_define_type value_type}}> DataList => _dataList;

    {{~if value_type.is_dynamic~}}
        public T GetOrDefaultAs<T>({{cs_define_type key_type}} key) where T : {{cs_define_type value_type}} => (T)Get(key) ?? null;
        public T GetAs<T>({{cs_define_type key_type}} key) where T : {{cs_define_type value_type}} => (T)Get(key);
    {{~end~}}
        public {{cs_define_type value_type}} GetOrDefault({{cs_define_type key_type}} key) => Get(key) ?? null;
        public {{cs_define_type value_type}} this[{{cs_define_type key_type}} key] => Get(key);
        public {{cs_define_type value_type}} Get({{cs_define_type key_type}} key)
        {
            {{cs_define_type value_type}} _v;
            if(_dataMap.TryGetValue(key, out _v))
            {
                return _v;
            }
            int index = _indexMap[key];
            var _buf = _dataLoader();
            _buf.ReaderIndex = index;
            {{cs_deserialize '_buf' '_v' value_type}}
            _dataList.Add(_v);
            _dataMap.Add(_v.{{x.index_field.convention_name}}, _v);
            return _v;
        }

        public void Resolve(Dictionary<string, object> _tables)
        {
            foreach(var v in _dataList)
            {
                v.Resolve(_tables);
            }
            PostResolve();
        }

        public void TranslateText(System.Func<string, string, string> translator)
        {
            foreach(var v in _dataList)
            {
                v.TranslateText(translator);
            }
        }
        {{~else if x.is_list_table ~}}
        private readonly List<{{cs_define_type value_type}}> _dataList;
        private System.Func<ByteBuf> _dataLoader;

        {{~if x.is_union_index~}}
        private {{cs_table_union_map_type_name x}} _dataMapUnion;
        private Dictionary<({{cs_table_get_param_def_list x}}),int> _indexMap;
        {{~else if !x.index_list.empty?~}}
        {{~for idx in x.index_list~}}
        private Dictionary<{{cs_define_type idx.type}}, {{cs_define_type value_type}}> _dataMap_{{idx.index_field.name}};
        {{~end~}}
        {{~else~}}
        private Dictionary<int,int> _indexMap;
        private readonly Dictionary<int, {{cs_define_type value_type}}> _dataMap;
        {{~end~}}

        public {{name}}(ByteBuf _buf, string _tbName, System.Func<string, ByteBuf> _loader)
        {
            _dataList = new List<{{cs_define_type value_type}}>();
            _dataLoader = new System.Func<ByteBuf>(()=>_loader(_tbName));
        {{~if x.is_union_index~}}
            _dataMapUnion = new {{cs_table_union_map_type_name x}}();
            _indexMap = new Dictionary<({{cs_table_get_param_def_list x}}),int>();
            {{key_value ='('}}
            for (int i = _buf.ReadSize(); i > 0; i--)
            {
            {{~for idx in x.index_list~}}
                {{field_name = 'key'+for.index}}
                {{cs_define_type idx.type}} {{field_name}};
                {{cs_deserialize '_buf' field_name idx.type}}
                {{~if for.last~}}
                {{key_value=key_value+field_name+')'}}
                {{~else~}}
                {{key_value=key_value+field_name+', '}}
                {{~end~}}
            {{~end~}}
                _indexMap.Add({{key_value}}, _buf.ReadInt());
            }
        {{~else if !x.index_list.empty?~}}
            //MULTI
        {{~for idx in x.index_list~}}
            _dataMap_{{idx.index_field.name}} = new Dictionary<{{cs_define_type idx.type}}, {{cs_define_type value_type}}>();
        {{~end~}}
            foreach(var _v in _dataList)
            {
            {{~for idx in x.index_list~}}
                _dataMap_{{idx.index_field.name}}.Add(_v.{{idx.index_field.convention_name}}, _v);
            {{~end~}}
            }
        {{~else~}}
            _indexMap = new Dictionary<int,int>();
            _dataMap = new Dictionary<int, {{cs_define_type value_type}}>();
            int size = _buf.ReadSize();
            for(int i = 0; i < size; i++)
            {
                _indexMap.Add(i,_buf.ReadInt());
            }
        {{~end~}}
        }



        {{~if x.is_union_index~}}
        public {{cs_define_type value_type}} Get({{cs_table_get_param_def_list x}})
        {
            {{cs_define_type value_type}} __v;
            if(_dataMapUnion.TryGetValue(({{cs_table_get_param_name_list x}}), out __v))
            {
                return __v;
            }
            ByteBuf _buf = _dataLoader();
            _buf.ReaderIndex = _indexMap[({{cs_table_get_param_name_list x}})];
            
            {{cs_deserialize '_buf' '__v' value_type}}
            _dataList.Add(__v);
            _dataMapUnion.Add(({{cs_table_get_param_name_list x}}), __v);
            return __v;
        }
        {{~else if !x.index_list.empty? ~}}
            {{~for idx in x.index_list~}}
        public {{cs_define_type value_type}} GetBy{{idx.index_field.convention_name}}({{cs_define_type idx.type}} key) => _dataMap_{{idx.index_field.name}}.TryGetValue(key, out {{cs_define_type value_type}} __v) ? __v : null;
            {{~end~}}
        {{~else if x.index_list.empty? ~}}
        private bool _readAll = false;
        public List<{{cs_define_type value_type}}> DataList => GetAllDatas();
        private List<{{cs_define_type value_type}}> GetAllDatas()
        {
            if(_readAll)
            {
                return _dataList;
            }
            ByteBuf _buf = _dataLoader();
            _dataList.Clear();
            for(int i = _buf.ReadSize(); i > 0; i--)
            {
                {{cs_define_type value_type}} _v;
                {{cs_deserialize '_buf' '_v' value_type}}
                _dataList.Add(_v);
                _dataMap.Add(i, _v);
            }
            _readAll = true;
            return _dataList;
        }
        public {{cs_define_type value_type}} this[int index] => Get(index);
        public {{cs_define_type value_type}} Get(int index)
        {
            {{cs_define_type value_type}} _v;
            if(_dataMap.TryGetValue(index, out _v))
            {
                return _v;
            }
            int i = _indexMap[index];
            var _buf = _dataLoader();
            _buf.ReaderIndex = i;
            {{cs_deserialize '_buf' '_v' value_type}}
            _dataMap.Add(index, _v);
            return _v;
        }
        {{~end~}}

        public void Resolve(Dictionary<string, object> _tables)
        {
            foreach(var v in _dataList)
            {
                v.Resolve(_tables);
            }
            PostResolve();
        }

        public void TranslateText(System.Func<string, string, string> translator)
        {
            foreach(var v in _dataList)
            {
                v.TranslateText(translator);
            }
        }
        {{~else~}}

        private readonly {{cs_define_type value_type}} _data;

        public {{name}}(ByteBuf _buf, string _tbName, System.Func<string, ByteBuf> _loader)
        {
            int n = _buf.ReadSize();
            if (n != 1) throw new SerializationException("table mode=one, but size != 1");
            ByteBuf _dataBuf = _loader(_tbName);
            _dataBuf.ReaderIndex = 1;
            {{cs_deserialize '_dataBuf' '_data' value_type}}
        }


        {{~ for field in value_type.bean.hierarchy_export_fields ~}}
    {{~if field.comment != '' ~}}
        /// <summary>
        /// {{field.escape_comment}}
        /// </summary>
    {{~end~}}
        public {{cs_define_type field.ctype}} {{field.convention_name}} => _data.{{field.convention_name}};
        {{~end~}}

        public void Resolve(Dictionary<string, object> _tables)
        {
            _data.Resolve(_tables);
            PostResolve();
        }

        public void TranslateText(System.Func<string, string, string> translator)
        {
            _data.TranslateText(translator);
        }

        {{~end~}}
    
        partial void PostInit();
        partial void PostResolve();
    }
}