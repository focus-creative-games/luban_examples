
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



namespace cfg.bonus
{

/// <summary>
/// 
/// </summary>
public sealed partial class ProbabilityItems :  bonus.Bonus 
{
    public ProbabilityItems(JsonElement _buf)  : base(_buf) 
    {
        { var _json = _buf.GetProperty("item_list"); int _n = _json.GetArrayLength(); ItemList = new bonus.ProbabilityItemInfo[_n]; int _index=0; foreach(JsonElement __e in _json.EnumerateArray()) { bonus.ProbabilityItemInfo __v;  __v =  bonus.ProbabilityItemInfo.DeserializeProbabilityItemInfo(__e);  ItemList[_index++] = __v; }   }
    }

    public ProbabilityItems(bonus.ProbabilityItemInfo[] item_list )  : base() 
    {
        this.ItemList = item_list;
    }

    public static ProbabilityItems DeserializeProbabilityItems(JsonElement _buf)
    {
        return new bonus.ProbabilityItems(_buf);
    }

    /// <summary>
    /// 
    /// </summary>
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

