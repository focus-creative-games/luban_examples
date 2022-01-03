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



namespace cfg.test
{

public sealed class TbTestRef
{
    private readonly Dictionary<int, test.TestRef> _dataMap;
    private readonly List<test.TestRef> _dataList;
    
    public TbTestRef(JsonElement _json)
    {
        _dataMap = new Dictionary<int, test.TestRef>();
        _dataList = new List<test.TestRef>();
        
        foreach(JsonElement _row in _json.EnumerateArray())
        {
            var _v = test.TestRef.DeserializeTestRef(_row);
            _dataList.Add(_v);
            _dataMap.Add(_v.Id, _v);
        }
    }

    public Dictionary<int, test.TestRef> DataMap => _dataMap;
    public List<test.TestRef> DataList => _dataList;

    public test.TestRef GetOrDefault(int key) => _dataMap.TryGetValue(key, out var v) ? v : null;
    public test.TestRef Get(int key) => _dataMap[key];
    public test.TestRef this[int key] => _dataMap[key];

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