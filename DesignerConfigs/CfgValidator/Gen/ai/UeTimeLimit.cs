
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
   
public sealed partial class UeTimeLimit :  ai.Decorator 
{
    public UeTimeLimit(JsonElement _buf)  : base(_buf) 
    {
        LimitTime = _buf.GetProperty("limit_time").GetSingle();
    }

    public UeTimeLimit(int id, string node_name, ai.EFlowAbortMode flow_abort_mode, float limit_time )  : base(id,node_name,flow_abort_mode) 
    {
        this.LimitTime = limit_time;
    }

    public static UeTimeLimit DeserializeUeTimeLimit(JsonElement _buf)
    {
        return new ai.UeTimeLimit(_buf);
    }

    public readonly float LimitTime;

    public const int ID = 338469720;
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
        + "FlowAbortMode:" + FlowAbortMode + ","
        + "LimitTime:" + LimitTime + ","
        + "}";
    }
    }
}

