
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



namespace cfg.bonus
{

public sealed partial class ProbabilityItems :  bonus.Bonus 
{
    public ProbabilityItems(JSONNode _json)  : base(_json) 
    {
        { var _json1 = _json["item_list"]; if(!_json1.IsArray) { throw new SerializationException(); } int _n = _json1.Count; ItemList = new bonus.ProbabilityItemInfo[_n]; int _index=0; foreach(JSONNode __e in _json1.Children) { bonus.ProbabilityItemInfo __v;  { if(!__e.IsObject) { throw new SerializationException(); }  __v = bonus.ProbabilityItemInfo.DeserializeProbabilityItemInfo(__e); }  ItemList[_index++] = __v; }   }
    }

    public ProbabilityItems(bonus.ProbabilityItemInfo[] item_list )  : base() 
    {
        this.ItemList = item_list;
    }

    public static ProbabilityItems DeserializeProbabilityItems(JSONNode _json)
    {
        return new bonus.ProbabilityItems(_json);
    }

    public readonly bonus.ProbabilityItemInfo[] ItemList;

    public const int ID = 366387866;
    public override int GetTypeId() => ID;

    public override void Resolve(Dictionary<string, object> _tables)
    {
        base.Resolve(_tables);
        foreach(var _e in ItemList) { _e?.Resolve(_tables); }
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "ItemList:" + Bright.Common.StringUtil.CollectionToString(ItemList) + ","
        + "}";
    }
    }
}
