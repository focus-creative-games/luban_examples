
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
   
public sealed partial class TbDetectCsvEncoding
{
    private readonly Dictionary<int, test.DetectEncoding> _dataMap;
    private readonly List<test.DetectEncoding> _dataList;
    
    public TbDetectCsvEncoding(ByteBuf _buf)
    {
        _dataMap = new Dictionary<int, test.DetectEncoding>();
        _dataList = new List<test.DetectEncoding>();
        
        for(int n = _buf.ReadSize() ; n > 0 ; --n)
        {
            test.DetectEncoding _v;
            _v = test.DetectEncoding.DeserializeDetectEncoding(_buf);
            _dataList.Add(_v);
            _dataMap.Add(_v.Id, _v);
        }
    }

    public Dictionary<int, test.DetectEncoding> DataMap => _dataMap;
    public List<test.DetectEncoding> DataList => _dataList;

    public test.DetectEncoding GetOrDefault(int key) => _dataMap.TryGetValue(key, out var v) ? v : null;
    public test.DetectEncoding Get(int key) => _dataMap[key];
    public test.DetectEncoding this[int key] => _dataMap[key];

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