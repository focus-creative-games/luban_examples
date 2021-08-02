
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
public sealed partial class CostCurrency :  cost.Cost 
{
    public CostCurrency(JsonElement _json)  : base(_json) 
    {
        Type = (item.ECurrencyType)_json.GetProperty("type").GetInt32();
        Num = _json.GetProperty("num").GetInt32();
    }

    public CostCurrency(item.ECurrencyType type, int num )  : base() 
    {
        this.Type = type;
        this.Num = num;
    }

    public static CostCurrency DeserializeCostCurrency(JsonElement _json)
    {
        return new cost.CostCurrency(_json);
    }

    /// <summary>
    /// 
    /// </summary>
    public readonly item.ECurrencyType Type;
    /// <summary>
    /// 
    /// </summary>
    public readonly int Num;

    public const int ID = 911838111;
    public override int GetTypeId() => ID;

    public override void Resolve(Dictionary<string, object> _tables)
    {
        base.Resolve(_tables);
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "Type:" + Type + ","
        + "Num:" + Num + ","
        + "}";
    }
    }
}

