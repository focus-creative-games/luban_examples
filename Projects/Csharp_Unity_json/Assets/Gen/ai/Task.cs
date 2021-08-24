
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



namespace cfg.ai
{

public abstract partial class Task :  ai.FlowNode 
{
    public Task(JSONNode _json)  : base(_json) 
    {
        { if(!_json["ignore_restart_self"].IsBoolean) { throw new SerializationException(); }  IgnoreRestartSelf = _json["ignore_restart_self"]; }
    }

    public Task(int id, string node_name, System.Collections.Generic.List<ai.Decorator> decorators, System.Collections.Generic.List<ai.Service> services, bool ignore_restart_self )  : base(id,node_name,decorators,services) 
    {
        this.IgnoreRestartSelf = ignore_restart_self;
    }

    public static Task DeserializeTask(JSONNode _json)
    {
        string type = _json["__type__"];
        switch (type)
        {
            case "UeWait": return new ai.UeWait(_json);
            case "UeWaitBlackboardTime": return new ai.UeWaitBlackboardTime(_json);
            case "MoveToTarget": return new ai.MoveToTarget(_json);
            case "ChooseSkill": return new ai.ChooseSkill(_json);
            case "MoveToRandomLocation": return new ai.MoveToRandomLocation(_json);
            case "MoveToLocation": return new ai.MoveToLocation(_json);
            case "DebugPrint": return new ai.DebugPrint(_json);
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
