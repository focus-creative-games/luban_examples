
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



namespace cfg.condition
{

/// <summary>
/// 
/// </summary>
public sealed partial class MinMaxLevel :  condition.BoolRoleCondition 
{
    public MinMaxLevel(JSONNode _json)  : base(_json) 
    {
        { if(!_json["min"].IsNumber) { throw new SerializationException(); }  Min = _json["min"]; }
        { if(!_json["max"].IsNumber) { throw new SerializationException(); }  Max = _json["max"]; }
    }

    public MinMaxLevel(int min, int max )  : base() 
    {
        this.Min = min;
        this.Max = max;
    }

    public static MinMaxLevel DeserializeMinMaxLevel(JSONNode _json)
    {
        return new condition.MinMaxLevel(_json);
    }

    /// <summary>
    /// 
    /// </summary>
    public readonly int Min;
    /// <summary>
    /// 
    /// </summary>
    public readonly int Max;

    public const int ID = 907499647;
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
        + "Min:" + Min + ","
        + "Max:" + Max + ","
        + "}";
    }
    }
}
