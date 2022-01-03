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



namespace cfg.l10n
{

public sealed class TbPatchDemo
{
    private readonly Dictionary<int, l10n.PatchDemo> _dataMap;
    private readonly List<l10n.PatchDemo> _dataList;
    
    public TbPatchDemo(JsonElement _json)
    {
        _dataMap = new Dictionary<int, l10n.PatchDemo>();
        _dataList = new List<l10n.PatchDemo>();
        
        foreach(JsonElement _row in _json.EnumerateArray())
        {
            var _v = l10n.PatchDemo.DeserializePatchDemo(_row);
            _dataList.Add(_v);
            _dataMap.Add(_v.Id, _v);
        }
    }

    public Dictionary<int, l10n.PatchDemo> DataMap => _dataMap;
    public List<l10n.PatchDemo> DataList => _dataList;

    public l10n.PatchDemo GetOrDefault(int key) => _dataMap.TryGetValue(key, out var v) ? v : null;
    public l10n.PatchDemo Get(int key) => _dataMap[key];
    public l10n.PatchDemo this[int key] => _dataMap[key];

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