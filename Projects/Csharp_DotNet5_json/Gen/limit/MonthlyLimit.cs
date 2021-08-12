
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



namespace cfg.limit
{

public sealed partial class MonthlyLimit :  limit.LimitBase 
{
    public MonthlyLimit(JsonElement _json)  : base(_json) 
    {
        Num = _json.GetProperty("num").GetInt32();
    }

    public MonthlyLimit(int num )  : base() 
    {
        this.Num = num;
    }

    public static MonthlyLimit DeserializeMonthlyLimit(JsonElement _json)
    {
        return new limit.MonthlyLimit(_json);
    }

    public readonly int Num;

    public const int ID = 2063279905;
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
        + "Num:" + Num + ","
        + "}";
    }
    }
}

