
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System.Collections.Generic;
using SimpleJSON;
using Luban;

namespace cfg.ai
{

public abstract class FlowNode :  ai.Node 
{
    public FlowNode()
    {
            decorators = new System.Collections.Generic.List<ai.Decorator>();
            services = new System.Collections.Generic.List<ai.Service>();
    }


    public static FlowNode LoadJsonFlowNode(SimpleJSON.JSONNode _json)
    {
        string type = _json["$type"];
        FlowNode obj;
        switch (type)
        {
            case "ai.Sequence":   
            case "Sequence":obj = new ai.Sequence(); break;
            case "ai.Selector":   
            case "Selector":obj = new ai.Selector(); break;
            case "ai.SimpleParallel":   
            case "SimpleParallel":obj = new ai.SimpleParallel(); break;
            case "ai.UeWait":   
            case "UeWait":obj = new ai.UeWait(); break;
            case "ai.UeWaitBlackboardTime":   
            case "UeWaitBlackboardTime":obj = new ai.UeWaitBlackboardTime(); break;
            case "ai.MoveToTarget":   
            case "MoveToTarget":obj = new ai.MoveToTarget(); break;
            case "ai.ChooseSkill":   
            case "ChooseSkill":obj = new ai.ChooseSkill(); break;
            case "ai.MoveToRandomLocation":   
            case "MoveToRandomLocation":obj = new ai.MoveToRandomLocation(); break;
            case "ai.MoveToLocation":   
            case "MoveToLocation":obj = new ai.MoveToLocation(); break;
            case "ai.DebugPrint":   
            case "DebugPrint":obj = new ai.DebugPrint(); break;
            default: throw new SerializationException();
        }
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonFlowNode(FlowNode _obj, SimpleJSON.JSONNode _json)
    {
        _json["$type"] = _obj.GetType().Name;
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public System.Collections.Generic.List<ai.Decorator> decorators;

    public System.Collections.Generic.List<ai.Service> services;

}

}

