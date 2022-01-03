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

public sealed class TbCompositeJsonTable1
{
    private readonly Dictionary<int, test.CompositeJsonTable1> _dataMap;
    private readonly List<test.CompositeJsonTable1> _dataList;
    
    public TbCompositeJsonTable1(JsonElement _json)
    {
        _dataMap = new Dictionary<int, test.CompositeJsonTable1>();
        _dataList = new List<test.CompositeJsonTable1>();
        
        foreach(JsonElement _row in _json.EnumerateArray())
        {
            var _v = test.CompositeJsonTable1.DeserializeCompositeJsonTable1(_row);
            _dataList.Add(_v);
            _dataMap.Add(_v.Id, _v);
        }
    }

    public Dictionary<int, test.CompositeJsonTable1> DataMap => _dataMap;
    public List<test.CompositeJsonTable1> DataList => _dataList;

    public test.CompositeJsonTable1 GetOrDefault(int key) => _dataMap.TryGetValue(key, out var v) ? v : null;
    public test.CompositeJsonTable1 Get(int key) => _dataMap[key];
    public test.CompositeJsonTable1 this[int key] => _dataMap[key];

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