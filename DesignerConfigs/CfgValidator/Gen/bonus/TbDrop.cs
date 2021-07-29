
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



namespace cfg.bonus
{

/// <summary>
/// 
/// </summary>
public sealed partial class TbDrop
{
    private readonly Dictionary<int, bonus.DropInfo> _dataMap;
    private readonly List<bonus.DropInfo> _dataList;
    
    public TbDrop(JsonElement _buf)
    {
        _dataMap = new Dictionary<int, bonus.DropInfo>();
        _dataList = new List<bonus.DropInfo>();
        
        foreach(JsonElement _row in _buf.EnumerateArray())
        {
            var _v = bonus.DropInfo.DeserializeDropInfo(_row);
            _dataList.Add(_v);
            _dataMap.Add(_v.Id, _v);
        }
    }

    public Dictionary<int, bonus.DropInfo> DataMap => _dataMap;
    public List<bonus.DropInfo> DataList => _dataList;

    public bonus.DropInfo GetOrDefault(int key) => _dataMap.TryGetValue(key, out var v) ? v : null;
    public bonus.DropInfo Get(int key) => _dataMap[key];
    public bonus.DropInfo this[int key] => _dataMap[key];

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
