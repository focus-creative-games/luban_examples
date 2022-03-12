//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;
using System.Linq;

namespace cfg.role
{
   
public partial class TbRoleLevelExpAttr
{
    private Dictionary<int, role.LevelExpAttr> _dataMap;
    private List<role.LevelExpAttr> _dataList;
    
    public TbRoleLevelExpAttr(ByteBuf _buf)
    {
        _dataMap = new Dictionary<int, role.LevelExpAttr>();
        _dataList = new List<role.LevelExpAttr>();
        
        for(int n = _buf.ReadSize() ; n > 0 ; --n)
        {
            role.LevelExpAttr _v;
            _v = role.LevelExpAttr.DeserializeLevelExpAttr(_buf);
            _dataList.Add(_v);
            _dataMap.Add(_v.Level, _v);
        }
        PostInit();
    }

    public Dictionary<int, role.LevelExpAttr> DataMap => _dataMap;
    public List<role.LevelExpAttr> DataList => _dataList;

    public role.LevelExpAttr GetOrDefault(int key) => _dataMap.TryGetValue(key, out var v) ? v : null;
    public role.LevelExpAttr Get(int key) => _dataMap[key];
    public role.LevelExpAttr this[int key] => _dataMap[key];

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
        var reloadMap = new TbRoleLevelExpAttr(_buf);
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
    
    partial void PostInit();
    partial void PostResolve();
}

}