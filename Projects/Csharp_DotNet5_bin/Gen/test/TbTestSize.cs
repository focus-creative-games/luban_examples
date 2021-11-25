
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
   
public sealed class TbTestSize
{
    private readonly Dictionary<int, test.TestSize> _dataMap;
    private readonly List<test.TestSize> _dataList;
    
    public TbTestSize(ByteBuf _buf)
    {
        _dataMap = new Dictionary<int, test.TestSize>();
        _dataList = new List<test.TestSize>();
        
        for(int n = _buf.ReadSize() ; n > 0 ; --n)
        {
            test.TestSize _v;
            _v = test.TestSize.DeserializeTestSize(_buf);
            _dataList.Add(_v);
            _dataMap.Add(_v.Id, _v);
        }
    }

    public Dictionary<int, test.TestSize> DataMap => _dataMap;
    public List<test.TestSize> DataList => _dataList;

    public test.TestSize GetOrDefault(int key) => _dataMap.TryGetValue(key, out var v) ? v : null;
    public test.TestSize Get(int key) => _dataMap[key];
    public test.TestSize this[int key] => _dataMap[key];

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