
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
   
public abstract partial class Decorator :  ai.Node 
{
    public Decorator(JsonElement _buf)  : base(_buf) 
    {
        FlowAbortMode = (ai.EFlowAbortMode)_buf.GetProperty("flow_abort_mode").GetInt32();
    }

    public Decorator(int id, string node_name, ai.EFlowAbortMode flow_abort_mode )  : base(id,node_name) 
    {
        this.FlowAbortMode = flow_abort_mode;
    }

    public static Decorator DeserializeDecorator(JsonElement _buf)
    {
        switch (_buf.GetProperty("__type__").GetString())
        {
            case "UeLoop": return new ai.UeLoop(_buf);
            case "UeCooldown": return new ai.UeCooldown(_buf);
            case "UeTimeLimit": return new ai.UeTimeLimit(_buf);
            case "UeBlackboard": return new ai.UeBlackboard(_buf);
            case "UeForceSuccess": return new ai.UeForceSuccess(_buf);
            case "IsAtLocation": return new ai.IsAtLocation(_buf);
            case "DistanceLessThan": return new ai.DistanceLessThan(_buf);
            default: throw new SerializationException();
        }
    }

    public readonly ai.EFlowAbortMode FlowAbortMode;


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
        + "}";
    }
    }
}

