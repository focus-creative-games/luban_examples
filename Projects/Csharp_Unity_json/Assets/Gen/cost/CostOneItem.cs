
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



namespace cfg.cost
{

public sealed partial class CostOneItem :  cost.Cost 
{
    public CostOneItem(JSONNode _json)  : base(_json) 
    {
        { if(!_json["item_id"].IsNumber) { throw new SerializationException(); }  ItemId = _json["item_id"]; }
    }

    public CostOneItem(int item_id )  : base() 
    {
        this.ItemId = item_id;
    }

    public static CostOneItem DeserializeCostOneItem(JSONNode _json)
    {
        return new cost.CostOneItem(_json);
    }

    public readonly int ItemId;
    public item.Item ItemId_Ref;

    public const int ID = -1033587381;
    public override int GetTypeId() => ID;

    public override void Resolve(Dictionary<string, object> _tables)
    {
        base.Resolve(_tables);
        this.ItemId_Ref = (_tables["item.TbItem"] as item.TbItem).GetOrDefault(ItemId);
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "ItemId:" + ItemId + ","
        + "}";
    }
    }
}
