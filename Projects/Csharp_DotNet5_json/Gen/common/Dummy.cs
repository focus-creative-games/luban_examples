
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



namespace cfg.common
{

public sealed partial class Dummy :  Bright.Config.BeanBase 
{
    public Dummy(JsonElement _json) 
    {
        Id = _json.GetProperty("id").GetInt32();
        Limit =  limit.LimitBase.DeserializeLimitBase(_json.GetProperty("limit"));
    }

    public Dummy(int id, limit.LimitBase limit ) 
    {
        this.Id = id;
        this.Limit = limit;
    }

    public static Dummy DeserializeDummy(JsonElement _json)
    {
        return new common.Dummy(_json);
    }

    public readonly int Id;
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
