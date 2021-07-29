
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

/// <summary>
/// 
/// </summary>
public sealed partial class MultiDayLimit :  limit.LimitBase 
{
    public MultiDayLimit(JsonElement _buf)  : base(_buf) 
    {
        Day = _buf.GetProperty("day").GetInt32();
        Num = _buf.GetProperty("num").GetInt32();
    }

    public MultiDayLimit(int day, int num )  : base() 
    {
        this.Day = day;
        this.Num = num;
    }

    public static MultiDayLimit DeserializeMultiDayLimit(JsonElement _buf)
    {
        return new limit.MultiDayLimit(_buf);
    }

    /// <summary>
    /// 
    /// </summary>
    public readonly int Day;
    /// <summary>
    /// 
    /// </summary>
    public readonly int Num;

    public const int ID = -1753629499;
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
        + "Day:" + Day + ","
        + "Num:" + Num + ","
        + "}";
    }
    }
}

