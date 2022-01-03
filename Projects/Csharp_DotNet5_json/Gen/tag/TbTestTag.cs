//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;
using System.Text.Json;



namespace cfg.tag
{

public sealed class TbTestTag
{
    private readonly Dictionary<int, tag.TestTag> _dataMap;
    private readonly List<tag.TestTag> _dataList;
    
    public TbTestTag(JsonElement _json)
    {
        _dataMap = new Dictionary<int, tag.TestTag>();
        _dataList = new List<tag.TestTag>();
        
        foreach(JsonElement _row in _json.EnumerateArray())
        {
            var _v = tag.TestTag.DeserializeTestTag(_row);
            _dataList.Add(_v);
            _dataMap.Add(_v.Id, _v);
        }
    }

    public Dictionary<int, tag.TestTag> DataMap => _dataMap;
    public List<tag.TestTag> DataList => _dataList;

    public tag.TestTag GetOrDefault(int key) => _dataMap.TryGetValue(key, out var v) ? v : null;
    public tag.TestTag Get(int key) => _dataMap[key];
    public tag.TestTag this[int key] => _dataMap[key];

    public void Resolve(Dictionary<string, object> _tables)
    {
        foreach(var v in _dataList)
        {
            v.Resolve(_tables);
        }
    }

    public void TranslateText(System.Func<string, string, string> translator)
    {
        foreach(var v in _dataList)
        {
            v.TranslateText(translator);
        }
    }
    
}

}