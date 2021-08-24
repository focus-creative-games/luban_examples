
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;
using SimpleJSON;



namespace cfg.test
{

public sealed partial class TbDemoGroup
{
    private readonly Dictionary<int, test.DemoGroup> _dataMap;
    private readonly List<test.DemoGroup> _dataList;
    
    public TbDemoGroup(JSONNode _json)
    {
        _dataMap = new Dictionary<int, test.DemoGroup>();
        _dataList = new List<test.DemoGroup>();
        
        foreach(JSONNode _row in _json.Children)
        {
            var _v = test.DemoGroup.DeserializeDemoGroup(_row);
            _dataList.Add(_v);
            _dataMap.Add(_v.Id, _v);
        }
    }

    public Dictionary<int, test.DemoGroup> DataMap => _dataMap;
    public List<test.DemoGroup> DataList => _dataList;

    public test.DemoGroup GetOrDefault(int key) => _dataMap.TryGetValue(key, out var v) ? v : null;
    public test.DemoGroup Get(int key) => _dataMap[key];
    public test.DemoGroup this[int key] => _dataMap[key];

    public void Resolve(Dictionary<string, object> _tables)
    {
        foreach(var v in _dataList)
        {
            v.Resolve(_tables);
        }
        OnResolveFinish(_tables);
    }


    partial void OnResolveFinish(Dictionary<string, object> _tables);
}

}