
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;



namespace cfg.ai
{

public abstract partial class Task :  ai.FlowNode 
{
    public Task(ByteBuf _buf)  : base(_buf) 
    {
        IgnoreRestartSelf = _buf.ReadBool();
    }

    public Task(int id, string node_name, System.Collections.Generic.List<ai.Decorator> decorators, System.Collections.Generic.List<ai.Service> services, bool ignore_restart_self )  : base(id,node_name,decorators,services) 
    {
        this.IgnoreRestartSelf = ignore_restart_self;
    }

    public static Task DeserializeTask(ByteBuf _buf)
    {
        switch (_buf.ReadInt())
        {
            case ai.UeWait.ID: return new ai.UeWait(_buf);
            case ai.UeWaitBlackboardTime.ID: return new ai.UeWaitBlackboardTime(_buf);
            case ai.MoveToTarget.ID: return new ai.MoveToTarget(_buf);
            case ai.ChooseSkill.ID: return new ai.ChooseSkill(_buf);
            case ai.MoveToRandomLocation.ID: return new ai.MoveToRandomLocation(_buf);
            case ai.MoveToLocation.ID: return new ai.MoveToLocation(_buf);
            case ai.DebugPrint.ID: return new ai.DebugPrint(_buf);
            default: throw new SerializationException();
        }
    }

    public readonly bool IgnoreRestartSelf;


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
        + "}";
    }
    }

}
