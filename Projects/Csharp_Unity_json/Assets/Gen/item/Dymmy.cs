
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



namespace cfg.item
{

/// <summary>
/// 
/// </summary>
public sealed partial class Dymmy :  item.ItemExtra 
{
    public Dymmy(JSONNode _json)  : base(_json) 
    {
        { if(!_json["cost"].IsObject) { throw new SerializationException(); }  Cost = cost.Cost.DeserializeCost(_json["cost"]); }
    }

    public Dymmy(int id, cost.Cost cost )  : base(id) 
    {
        this.Cost = cost;
    }

    public static Dymmy DeserializeDymmy(JSONNode _json)
    {
        return new item.Dymmy(_json);
    }

    /// <summary>
    /// 
    /// </summary>
    public readonly cost.Cost Cost;

    public const int ID = 896889705;
    public override int GetTypeId() => ID;

    public override void Resolve(Dictionary<string, object> _tables)
    {
        base.Resolve(_tables);
        Cost?.Resolve(_tables);
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "Cost:" + Cost + ","
        + "}";
    }
    }
}
