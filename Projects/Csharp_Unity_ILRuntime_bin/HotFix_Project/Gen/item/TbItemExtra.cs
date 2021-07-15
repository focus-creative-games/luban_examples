
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Bright.Serialization;
using System.Collections.Generic;

namespace cfg.item
{
   
public sealed partial class TbItemExtra
{
    private readonly Dictionary<int, item.ItemExtra> _dataMap;
    private readonly List<item.ItemExtra> _dataList;
    
    public TbItemExtra(ByteBuf _buf)
    {
        _dataMap = new Dictionary<int, item.ItemExtra>();
        _dataList = new List<item.ItemExtra>();
        
        for(int n = _buf.ReadSize() ; n > 0 ; --n)
        {
            item.ItemExtra _v;
            _v = item.ItemExtra.DeserializeItemExtra(_buf);
            _dataList.Add(_v);
            _dataMap.Add(_v.Id, _v);
        }
    }

    public Dictionary<int, item.ItemExtra> DataMap => _dataMap;
    public List<item.ItemExtra> DataList => _dataList;

    public T GetOrDefaultAs<T>(int key) where T : item.ItemExtra => _dataMap.TryGetValue(key, out var v) ? (T)v : null;
    public T GetAs<T>(int key) where T : item.ItemExtra => (T)_dataMap[key];
    public item.ItemExtra GetOrDefault(int key) => _dataMap.TryGetValue(key, out var v) ? v : null;
    public item.ItemExtra Get(int key) => _dataMap[key];
    public item.ItemExtra this[int key] => _dataMap[key];

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
