
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



namespace cfg.common
{

/// <summary>
/// 
/// </summary>
public sealed partial class Dummy :  Bright.Config.BeanBase 
{
    public Dummy(JSONNode _json) 
    {
        { if(!_json["id"].IsNumber) { throw new SerializationException(); }  Id = _json["id"]; }
        { if(!_json["limit"].IsObject) { throw new SerializationException(); }  Limit = limit.LimitBase.DeserializeLimitBase(_json["limit"]); }
    }

    public Dummy(int id, limit.LimitBase limit ) 
    {
        this.Id = id;
        this.Limit = limit;
    }

    public static Dummy DeserializeDummy(JSONNode _json)
    {
        return new common.Dummy(_json);
    }

    /// <summary>
    /// 
    /// </summary>
    public readonly int Id;
    /// <summary>
    /// 
    /// </summary>
    public readonly limit.LimitBase Limit;

    public const int ID = -985084219;
    public override int GetTypeId() => ID;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        Limit?.Resolve(_tables);
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "Limit:" + Limit + ","
        + "}";
    }
    }
}
