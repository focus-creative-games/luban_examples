
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



namespace cfg.limit
{

public sealed partial class MultiDayLimit :  limit.LimitBase 
{
    public MultiDayLimit(JSONNode _json)  : base(_json) 
    {
        { if(!_json["day"].IsNumber) { throw new SerializationException(); }  Day = _json["day"]; }
        { if(!_json["num"].IsNumber) { throw new SerializationException(); }  Num = _json["num"]; }
    }

    public MultiDayLimit(int day, int num )  : base() 
    {
        this.Day = day;
        this.Num = num;
    }

    public static MultiDayLimit DeserializeMultiDayLimit(JSONNode _json)
    {
        return new limit.MultiDayLimit(_json);
    }

    public readonly int Day;
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
