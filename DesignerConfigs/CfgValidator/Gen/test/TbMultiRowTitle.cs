
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

/// <summary>
/// 
/// </summary>
public sealed partial class TbMultiRowTitle
{
    private readonly Dictionary<int, test.MultiRowTitle> _dataMap;
    private readonly List<test.MultiRowTitle> _dataList;
    
    public TbMultiRowTitle(JsonElement _buf)
    {
        _dataMap = new Dictionary<int, test.MultiRowTitle>();
        _dataList = new List<test.MultiRowTitle>();
        
        foreach(JsonElement _row in _buf.EnumerateArray())
        {
            var _v = test.MultiRowTitle.DeserializeMultiRowTitle(_row);
            _dataList.Add(_v);
            _dataMap.Add(_v.Id, _v);
        }
    }

    public Dictionary<int, test.MultiRowTitle> DataMap => _dataMap;
    public List<test.MultiRowTitle> DataList => _dataList;

    public test.MultiRowTitle GetOrDefault(int key) => _dataMap.TryGetValue(key, out var v) ? v : null;
    public test.MultiRowTitle Get(int key) => _dataMap[key];
    public test.MultiRowTitle this[int key] => _dataMap[key];

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
