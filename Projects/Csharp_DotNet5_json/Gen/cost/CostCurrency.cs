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

public sealed class CostCurrency :  cost.Cost 
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

    public item.ECurrencyType Type { get; private set; }
    public int Num { get; private set; }

    public const int __ID__ = 911838111;
    public override int GetTypeId() => __ID__;

    public override void Resolve(Dictionary<string, object> _tables)
    {
        base.Resolve(_tables);
    }

    public override void TranslateText(System.Func<string, string, string> translator)
    {
        base.TranslateText(translator);
    }

    public override string ToString()
    {
        return "{ "
        + "Type:" + Type + ","
        + "Num:" + Num + ","
        + "}";
    }
    }
}
