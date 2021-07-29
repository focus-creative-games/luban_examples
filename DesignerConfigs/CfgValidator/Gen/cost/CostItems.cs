
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



namespace cfg.cost
{

/// <summary>
/// 
/// </summary>
public sealed partial class CostItems :  cost.Cost 
{
    public CostItems(JsonElement _buf)  : base(_buf) 
    {
        { var _json = _buf.GetProperty("item_list"); int _n = _json.GetArrayLength(); ItemList = new cost.CostItem[_n]; int _index=0; foreach(JsonElement __e in _json.EnumerateArray()) { cost.CostItem __v;  __v =  cost.CostItem.DeserializeCostItem(__e);  ItemList[_index++] = __v; }   }
    }

    public CostItems(cost.CostItem[] item_list )  : base() 
    {
        this.ItemList = item_list;
    }

    public static CostItems DeserializeCostItems(JsonElement _buf)
    {
        return new cost.CostItems(_buf);
    }

    /// <summary>
    /// 
    /// </summary>
    public readonly cost.CostItem[] ItemList;

    public const int ID = -77945102;
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

