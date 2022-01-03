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

public sealed class TbTestBeRef2
{
    private readonly Dictionary<int, test.TestBeRef> _dataMap;
    private readonly List<test.TestBeRef> _dataList;
    
    public TbTestBeRef2(JsonElement _json)
    {
        _dataMap = new Dictionary<int, test.TestBeRef>();
        _dataList = new List<test.TestBeRef>();
        
        foreach(JsonElement _row in _json.EnumerateArray())
        {
            var _v = test.TestBeRef.DeserializeTestBeRef(_row);
            _dataList.Add(_v);
            _dataMap.Add(_v.Id, _v);
        }
    }

    public Dictionary<int, test.TestBeRef> DataMap => _dataMap;
    public List<test.TestBeRef> DataList => _dataList;

    public test.TestBeRef GetOrDefault(int key) => _dataMap.TryGetValue(key, out var v) ? v : null;
    public test.TestBeRef Get(int key) => _dataMap[key];
    public test.TestBeRef this[int key] => _dataMap[key];

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