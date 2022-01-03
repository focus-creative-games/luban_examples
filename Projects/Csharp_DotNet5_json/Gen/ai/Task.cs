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

public abstract class Task :  ai.FlowNode 
{
    public Task(JsonElement _json)  : base(_json) 
    {
        IgnoreRestartSelf = _json.GetProperty("ignore_restart_self").GetBoolean();
    }

    public Task(int id, string node_name, System.Collections.Generic.List<ai.Decorator> decorators, System.Collections.Generic.List<ai.Service> services, bool ignore_restart_self )  : base(id,node_name,decorators,services) 
    {
        this.IgnoreRestartSelf = ignore_restart_self;
    }

    public static Task DeserializeTask(JsonElement _json)
    {
        switch (_json.GetProperty("__type__").GetString())
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

    public bool IgnoreRestartSelf { get; private set; }


    public override void Resolve(Dictionary<string, object> _tables)
    {
        base.Resolve(_tables);
    }

    public override void TranslateText(System.Func<string, string, string> translator)
    {
        base.TranslateText(translator);
    }

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
