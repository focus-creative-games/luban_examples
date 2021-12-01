
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;
using SimpleJSON;



namespace cfg.test
{

public sealed class TbMultiIndexList
{
    private readonly List<test.MultiIndexList> _dataList;
    
    public TbMultiIndexList(JSONNode _json)
    {
        _dataList = new List<test.MultiIndexList>();
        
        foreach(JSONNode _row in _json.Children)
        {
            var _v = test.MultiIndexList.DeserializeMultiIndexList(_row);
            _dataList.Add(_v);
        }
    }

    public List<test.MultiIndexList> DataList => _dataList;

    public test.MultiIndexList Get(int index) => _dataList[index];
    public test.MultiIndexList this[int index] => _dataList[index];

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