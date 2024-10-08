
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Luban;
using System.Text.Json;


namespace cfg.test
{
public partial class TbTestFieldVariant
{
    private readonly System.Collections.Generic.Dictionary<int, test.TestFieldVariant> _dataMap;
    private readonly System.Collections.Generic.List<test.TestFieldVariant> _dataList;
    
    public TbTestFieldVariant(JsonElement _buf)
    {
        _dataMap = new System.Collections.Generic.Dictionary<int, test.TestFieldVariant>();
        _dataList = new System.Collections.Generic.List<test.TestFieldVariant>();
        
        foreach(JsonElement _ele in _buf.EnumerateArray())
        {
            test.TestFieldVariant _v;
            _v = test.TestFieldVariant.DeserializeTestFieldVariant(_ele);
            _dataList.Add(_v);
            _dataMap.Add(_v.Id, _v);
        }
    }

    public System.Collections.Generic.Dictionary<int, test.TestFieldVariant> DataMap => _dataMap;
    public System.Collections.Generic.List<test.TestFieldVariant> DataList => _dataList;

    public test.TestFieldVariant GetOrDefault(int key) => _dataMap.TryGetValue(key, out var v) ? v : null;
    public test.TestFieldVariant Get(int key) => _dataMap[key];
    public test.TestFieldVariant this[int key] => _dataMap[key];

    public void ResolveRef(Tables tables)
    {
        foreach(var _v in _dataList)
        {
            _v.ResolveRef(tables);
        }
    }

}

}

