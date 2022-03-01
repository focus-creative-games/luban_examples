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
    private Dictionary<{{cs_define_type key_type}}, {{cs_define_type value_type}}> _dataMap;
    private List<{{cs_define_type value_type}}> _dataList;
    
    public {{name}}(ByteBuf _buf)
    {
        _dataMap = new Dictionary<{{cs_define_type key_type}}, {{cs_define_type value_type}}>();
        _dataList = new List<{{cs_define_type value_type}}>();
        
        for(int n = _buf.ReadSize() ; n > 0 ; --n)
        {
            {{cs_define_type value_type}} _v;
            {{cs_deserialize '_buf' '_v' value_type}}
            _dataList.Add(_v);
            _dataMap.Add(_v.{{x.index_field.convention_name}}, _v);
        }
        PostInit();
    }

    public Dictionary<{{cs_define_type key_type}}, {{cs_define_type value_type}}> DataMap => _dataMap;
    public List<{{cs_define_type value_type}}> DataList => _dataList;

{{~if value_type.is_dynamic~}}
    public T GetOrDefaultAs<T>({{cs_define_type key_type}} key) where T : {{cs_define_type value_type}} => _dataMap.TryGetValue(key, out var v) ? (T)v : null;
    public T GetAs<T>({{cs_define_type key_type}} key) where T : {{cs_define_type value_type}} => (T)_dataMap[key];
{{~end~}}
    public {{cs_define_type value_type}} GetOrDefault({{cs_define_type key_type}} key) => _dataMap.TryGetValue(key, out var v) ? v : null;
    public {{cs_define_type value_type}} Get({{cs_define_type key_type}} key) => _dataMap[key];
    public {{cs_define_type value_type}} this[{{cs_define_type key_type}} key] => _dataMap[key];

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

    public void Reload(ByteBuf _buf)
    {
        var reloadMap = new {{name}}(_buf);
        foreach (var rowDataKey in this._dataMap.Keys.ToList())
        {
            if(!reloadMap._dataMap.ContainsKey(rowDataKey))
            {
                this._dataList.Remove(this._dataMap[rowDataKey]);
                this._dataMap.Remove(rowDataKey);
            }
        }

        foreach (var reloadData in reloadMap._dataMap)
        {
            if (this._dataMap.ContainsKey(reloadData.Key))
            {
                this._dataMap[reloadData.Key].Reload(reloadData.Value);
            }
            else
            {
                this._dataMap.Add(reloadData.Key,reloadData.Value);
                this._dataList.Add(reloadData.Value);
            }
        }
    }
        {{~else if x.is_list_table ~}}
    // is_list_table
    private List<{{cs_define_type value_type}}> _dataList;

    {{~if x.is_union_index~}}
    private {{cs_table_union_map_type_name x}} _dataMapUnion;
    {{~else if !x.index_list.empty?~}}
    {{~for idx in x.index_list~}}
    private Dictionary<{{cs_define_type idx.type}}, {{cs_define_type value_type}}> _dataMap_{{idx.index_field.name}};
    {{~end~}}
    {{~end~}}

    public {{name}}(ByteBuf _buf)
    {
        _dataList = new List<{{cs_define_type value_type}}>();
        
        for(int n = _buf.ReadSize() ; n > 0 ; --n)
        {
            {{cs_define_type value_type}} _v;
            {{cs_deserialize '_buf' '_v' value_type}}
            _dataList.Add(_v);
        }
    {{~if x.is_union_index~}}
        _dataMapUnion = new {{cs_table_union_map_type_name x}}();
        foreach(var _v in _dataList)
        {
            _dataMapUnion.Add(({{cs_table_key_list x "_v"}}), _v);
        }
    {{~else if !x.index_list.empty?~}}
    {{~for idx in x.index_list~}}
        _dataMap_{{idx.index_field.name}} = new Dictionary<{{cs_define_type idx.type}}, {{cs_define_type value_type}}>();
    {{~end~}}
        foreach(var _v in _dataList)
        {
        {{~for idx in x.index_list~}}
            _dataMap_{{idx.index_field.name}}.Add(_v.{{idx.index_field.convention_name}}, _v);
        {{~end~}}
        }
    {{~end~}}
        PostInit();
    }


    public List<{{cs_define_type value_type}}> DataList => _dataList;

    {{~if x.is_union_index~}}
    public {{cs_define_type value_type}} Get({{cs_table_get_param_def_list x}}) => _dataMapUnion.TryGetValue(({{cs_table_get_param_name_list x}}), out {{cs_define_type value_type}} __v) ? __v : null;
    {{~else if !x.index_list.empty? ~}}
        {{~for idx in x.index_list~}}
    public {{cs_define_type value_type}} GetBy{{idx.index_field.convention_name}}({{cs_define_type idx.type}} key) => _dataMap_{{idx.index_field.name}}.TryGetValue(key, out {{cs_define_type value_type}} __v) ? __v : null;
        {{~end~}}
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

    public void Reload(ByteBuf _buf)
    {
        var reloadDataList = new {{name}}(_buf)._dataList;
        _dataList.Capacity = reloadDataList.Count;
        {{~if value_type.type_name == "bean"~}}
        for (int i = 0; i<reloadDataList.Count; i++)
        {
            {{~if value_type.is_dynamic~}}
            if(_dataList[i]!=null && _dataList[i].GetTypeId() == reloadDataList[i].GetTypeId())
            {
                switch (reloadDataList[i].GetTypeId())
                {
                    {{~for child in value_type.bean.hierarchy_not_abstract_children~}}
                    case {{child.full_name}}.__ID__:
                        (_dataList[i] as {{child.full_name}}).Reload(reloadDataList[i] as {{child.full_name}});
                        break;
                    {{~end~}}
                }
            }else
            {
                _dataList[i] = reloadDataList[i];
            }
            {{~else~}}
            if(_dataList[i]!=null)
            {
                _dataList[i].Reload(reloadDataList[i]);
            }else
            {
                _dataList[i] = reloadDataList[i];
            }
            {{~end~}}
        }
        {{~else~}}
            for (int i = 0; i<reloadDataList.Count; i++)
            {
                _dataList[i] = reloadDataList[i];
            }
        {{~end~}}
        {{~if x.is_union_index~}}
        _dataMapUnion.Clear();
        foreach(var _v in _dataList)
        {
            _dataMapUnion.Add(({{cs_table_key_list x "_v"}}), _v);
        }
        {{~else if !x.index_list.empty?~}}
            {{~for idx in x.index_list~}}
        _dataMap_{{idx.index_field.name}}.Clear();
        {{~end~}}
        foreach (var _v in _dataList)
        {
            {{~for idx in x.index_list~}}
        _dataMap_{{idx.index_field.name}}.Add(_v.{{idx.index_field.convention_name}}, _v);
            {{~end~}}
        }
        {{~end~}}
    }
    {{~else~}}

    //table mode=one
     private readonly {{cs_define_type value_type}} _data;

    public {{name}}(ByteBuf _buf)
    {
        int n = _buf.ReadSize();
        if (n != 1) throw new SerializationException("table mode=one, but size != 1");
        {{cs_deserialize '_buf' '_data' value_type}}
        PostInit();
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

    
    public void Reload(ByteBuf _buf)
    {
        _data.Reload(new {{name}}(_buf)._data);
    }

    {{~end~}}
    
    partial void PostInit();
    partial void PostResolve();
}

}