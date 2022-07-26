using Bright.Serialization;
using System.Collections.Generic;
using System.Linq;

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
        public readonly List<{{cs_define_type key_type}}> Indexes;
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
            Indexes = _indexMap.Keys.ToList();
            PostInit();
        }

    {{~if value_type.is_dynamic~}}
        public T GetOrDefaultAs<T>({{cs_define_type key_type}} key) where T : {{cs_define_type value_type}}
        {
            if(_indexMap.TryGetValue(key,out var _))
            {
                return (T)Get(key);
            }
            return default(T);
        }
        public T GetAs<T>({{cs_define_type key_type}} key) where T : {{cs_define_type value_type}} => (T)Get(key);
    {{~end~}}
        public {{cs_define_type value_type}} this[{{cs_define_type key_type}} key] => Get(key);
        public {{cs_define_type value_type}} Get({{cs_define_type key_type}} key)
        {
            {{cs_define_type value_type}} _v;
            if(_dataMap.TryGetValue(key, out _v))
            {
                return _v;
            }
            ResetByteBuf(_indexMap[key]);
            {{cs_deserialize '_buf' '_v' value_type}}
            _dataList.Add(_v);
            _dataMap.Add(_v.{{x.index_field.convention_name}}, _v);
            _v.Resolve(tables);
            if(_indexMap.Count == _dataMap.Count)
            {
                _buf = null;
            }
            return _v;
        }
        public {{cs_define_type value_type}} GetOrDefault({{cs_define_type key_type}} key)
        {
            if(_indexMap.TryGetValue(key,out var _))
            {
                return Get(key);
            }
            return null;
        }
        {{~else if x.is_list_table ~}}
        private List<{{cs_define_type value_type}}> _dataList;
        private System.Func<ByteBuf> _dataLoader;

        {{~if x.is_union_index~}}
        private {{cs_table_union_map_type_name x}} _dataMapUnion;
        private readonly Dictionary<({{cs_table_get_param_def_list x}}),int> _indexMap;
        public readonly List<({{cs_table_get_param_def_list x}})> Indexes;
        {{~else if !x.index_list.empty?~}}
        {{~for idx in x.index_list~}}
        private Dictionary<{{cs_define_type idx.type}}, {{cs_define_type value_type}}> _dataMap_{{idx.index_field.name}};
        private readonly Dictionary<{{cs_define_type idx.type}},int> _indexMap_{{idx.index_field.name}};
        public readonly List<{{cs_define_type idx.type}}> Indexes_{{idx.index_field.name}};
        {{~end~}}
        {{~else~}}
        private readonly Dictionary<int,int> _indexMap;
        public readonly List<int> Indexes;
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
            Indexes = _indexMap.Keys.ToList();
        {{~else if !x.index_list.empty?~}}
        {{~for idx in x.index_list~}}
            _dataMap_{{idx.index_field.name}} = new Dictionary<{{cs_define_type idx.type}}, {{cs_define_type value_type}}>();
            _indexMap_{{idx.index_field.name}} = new Dictionary<{{cs_define_type idx.type}},int>();
        {{~end~}}
        

            int size = _buf.ReadSize();
            for(int i = 0; i < size; i++)
            {     
        {{~for idx in x.index_list~}} 
                {{cs_define_type idx.type}} key_{{idx.index_field.name}};
                {{cs_deserialize '_buf' 'key_'+idx.index_field.name idx.type}}
        {{~end~}}
                int index = _buf.ReadInt();
        {{~for idx in x.index_list~}} 
                _indexMap_{{idx.index_field.name}}.Add(key_{{idx.index_field.name}},index);
        {{~end~}}
            }
        {{~for idx in x.index_list~}} 
            Indexes_{{idx.index_field.name}} = _indexMap_{{idx.index_field.name}}.Keys.ToList();
        {{~end~}}
        {{~else~}}
            _indexMap = new Dictionary<int,int>();
            _dataMap = new Dictionary<int, {{cs_define_type value_type}}>();
            int size = _buf.ReadSize();
            for(int i = 0; i < size; i++)
            {
                _indexMap.Add(i,_buf.ReadInt());
            }
            Indexes = _indexMap.Keys.ToList();
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
            ResetByteBuf(_indexMap[({{cs_table_get_param_name_list x}})]);

            {{cs_deserialize '_buf' '__v' value_type}}
            _dataList.Add(__v);
            _dataMapUnion.Add(({{cs_table_get_param_name_list x}}), __v);
            __v.Resolve(tables);
            if(_indexMap.Count == _dataMapUnion.Count)
            {
                _buf = null;
            }
            return __v;
        }
        {{~else if !x.index_list.empty? ~}}
            {{~for idx in x.index_list~}}
        public {{cs_define_type value_type}} GetBy{{idx.index_field.convention_name}}({{cs_define_type idx.type}} key)
        {
            if(_dataMap_{{idx.index_field.name}}.TryGetValue(key,out var value))
            {
                return value;
            }
            int index = _indexMap_{{idx.index_field.name}}[key];
            ResetByteBuf(index);
            {{cs_define_type value_type}} _v;
            {{cs_deserialize '_buf' '_v' value_type}}
            _dataMap_{{idx.index_field.name}}.Add(key, _v);
            _v.Resolve(tables);
            return _v;
        }    
            {{~end~}}
        {{~else if x.index_list.empty? ~}}
        public {{cs_define_type value_type}} this[int index] => Get(index);
        public {{cs_define_type value_type}} Get(int index)
        {
            {{cs_define_type value_type}} _v;
            if(_dataMap.TryGetValue(index, out _v))
            {
                return _v;
            }
            ResetByteBuf(_indexMap[index]);
            {{cs_deserialize '_buf' '_v' value_type}}
            _dataMap[index] = _v;
            _v.Resolve(tables);
            if(_indexMap.Count == _dataMap.Count)
            {
                _dataList = _dataMap.OrderBy(kvp=>kvp.Key).Select(kvp=>kvp.Value).ToList();
                _buf = null;
            }
            return _v;
        }
        {{~end~}}
        {{~else~}}

        private readonly {{cs_define_type value_type}} _data;

        public {{name}}(ByteBuf _buf, string _tbName, System.Func<string, ByteBuf> _loader)
        {
            ByteBuf _dataBuf = _loader(_tbName);
            int n = _buf.ReadSize();
            int m = _dataBuf.ReadSize();
            if (n != 1 || m != 1) throw new SerializationException("table mode=one, but size != 1");
            {{cs_deserialize '_dataBuf' '_data' value_type}}
        }


        {{~ for field in value_type.bean.hierarchy_export_fields ~}}
    {{~if field.comment != '' ~}}
        /// <summary>
        /// {{field.escape_comment}}
        /// </summary>
    {{~end~}}
        public {{cs_define_type field.ctype}} {{field.convention_name}} => _data.{{field.convention_name}};
        {{~if field.gen_ref~}}
        public {{cs_define_type field.ref_type}} {{field.convention_name}}_Ref => _data.{{field.convention_name}}_Ref;
        {{~end~}}
        {{~end~}}

        {{~end~}}
        private ByteBuf _buf = null;
        
    {{~if x.is_map_table||x.is_list_table ~}}
        private void ResetByteBuf(int readerInex = 0)
        {
            if( _buf == null)
            {
                _buf = _dataLoader();
            }
            _buf.ReaderIndex = readerInex;
        }
    {{~end~}}
    
        private Dictionary<string, object> tables;
        public void CacheTables(Dictionary<string, object> _tables)
        {
        {{~if x.mode == 'ONE'~}}
            _data.Resolve(_tables);
        {{~else~}}
            tables = _tables;
        {{~end~}}
        }
        partial void PostInit();
    }
} 