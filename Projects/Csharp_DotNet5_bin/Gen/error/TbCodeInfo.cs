
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;

namespace cfg.error
{
   
public sealed partial class TbCodeInfo
{
    private readonly Dictionary<error.EErrorCode, error.CodeInfo> _dataMap;
    private readonly List<error.CodeInfo> _dataList;
    
    public TbCodeInfo(ByteBuf _buf)
    {
        _dataMap = new Dictionary<error.EErrorCode, error.CodeInfo>();
        _dataList = new List<error.CodeInfo>();
        
        for(int n = _buf.ReadSize() ; n > 0 ; --n)
        {
            error.CodeInfo _v;
            _v = error.CodeInfo.DeserializeCodeInfo(_buf);
            _dataList.Add(_v);
            _dataMap.Add(_v.Code, _v);
        }
    }

    public Dictionary<error.EErrorCode, error.CodeInfo> DataMap => _dataMap;
    public List<error.CodeInfo> DataList => _dataList;

    public error.CodeInfo GetOrDefault(error.EErrorCode key) => _dataMap.TryGetValue(key, out var v) ? v : null;
    public error.CodeInfo Get(error.EErrorCode key) => _dataMap[key];
    public error.CodeInfo this[error.EErrorCode key] => _dataMap[key];

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