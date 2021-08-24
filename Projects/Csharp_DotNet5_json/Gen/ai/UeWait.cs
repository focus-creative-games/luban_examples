
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



namespace cfg.ai
{

public sealed partial class UeWait :  ai.Task 
{
    public UeWait(JsonElement _json)  : base(_json) 
    {
        WaitTime = _json.GetProperty("wait_time").GetSingle();
        RandomDeviation = _json.GetProperty("random_deviation").GetSingle();
    }

    public UeWait(int id, string node_name, System.Collections.Generic.List<ai.Decorator> decorators, System.Collections.Generic.List<ai.Service> services, bool ignore_restart_self, float wait_time, float random_deviation )  : base(id,node_name,decorators,services,ignore_restart_self) 
    {
        this.WaitTime = wait_time;
        this.RandomDeviation = random_deviation;
    }

    public static UeWait DeserializeUeWait(JsonElement _json)
    {
        return new ai.UeWait(_json);
    }

    public readonly float WaitTime;
    public readonly float RandomDeviation;

    public const int ID = -512994101;
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
        + "Id:" + Id + ","
        + "NodeName:" + NodeName + ","
        + "Decorators:" + Bright.Common.StringUtil.CollectionToString(Decorators) + ","
        + "Services:" + Bright.Common.StringUtil.CollectionToString(Services) + ","
        + "IgnoreRestartSelf:" + IgnoreRestartSelf + ","
        + "WaitTime:" + WaitTime + ","
        + "RandomDeviation:" + RandomDeviation + ","
        + "}";
    }
    }
}
