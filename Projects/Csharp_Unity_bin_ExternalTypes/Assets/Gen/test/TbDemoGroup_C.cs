//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;

namespace cfg.test
{
   
public partial class TbDemoGroup_C
{
    private readonly Dictionary<int, test.DemoGroup> _dataMap;
    private readonly List<test.DemoGroup> _dataList;
    
    public TbDemoGroup_C(ByteBuf _buf)
    {
        _dataMap = new Dictionary<int, test.DemoGroup>();
        _dataList = new List<test.DemoGroup>();
        
        for(int n = _buf.ReadSize() ; n > 0 ; --n)
        {
            test.DemoGroup _v;
            _v = test.DemoGroup.DeserializeDemoGroup(_buf);
            _dataList.Add(_v);
            _dataMap.Add(_v.Id, _v);
        }
        PostInit();
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
        PostResolve();
    }

    public void TranslateText(System.Func<string, string, string> translator)
    {
        foreach(var v in _dataList)
        {
            v.TranslateText(translator);
        }
    }
    
    partial void PostInit();
    partial void PostResolve();
}

}