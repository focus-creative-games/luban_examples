
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

public sealed class UeForceSuccess :  ai.Decorator 
{
    public UeForceSuccess(JsonElement _json)  : base(_json) 
    {
    }

    public UeForceSuccess(int id, string node_name, ai.EFlowAbortMode flow_abort_mode )  : base(id,node_name,flow_abort_mode) 
    {
    }

    public static UeForceSuccess DeserializeUeForceSuccess(JsonElement _json)
    {
        return new ai.UeForceSuccess(_json);
    }


    public const int ID = 195054574;
    public override int GetTypeId() => ID;

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
        + "FlowAbortMode:" + FlowAbortMode + ","
        + "}";
    }
    }
}