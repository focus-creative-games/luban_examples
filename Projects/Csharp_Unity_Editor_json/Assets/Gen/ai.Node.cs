
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

namespace editor.cfg.ai
{

public abstract class Node :  Luban.EditorBeanBase 
{
    public Node()
    {
            nodeName = "";
    }


    public static Node LoadJsonNode(SimpleJSON.JSONNode _json)
    {
        string type = _json["$type"];
        Node obj;
        switch (type)
        {
            case "ai.UeSetDefaultFocus":   
            case "UeSetDefaultFocus":obj = new ai.UeSetDefaultFocus(); break;
            case "ai.ExecuteTimeStatistic":   
            case "ExecuteTimeStatistic":obj = new ai.ExecuteTimeStatistic(); break;
            case "ai.ChooseTarget":   
            case "ChooseTarget":obj = new ai.ChooseTarget(); break;
            case "ai.KeepFaceTarget":   
            case "KeepFaceTarget":obj = new ai.KeepFaceTarget(); break;
            case "ai.GetOwnerPlayer":   
            case "GetOwnerPlayer":obj = new ai.GetOwnerPlayer(); break;
            case "ai.UpdateDailyBehaviorProps":   
            case "UpdateDailyBehaviorProps":obj = new ai.UpdateDailyBehaviorProps(); break;
            case "ai.UeLoop":   
            case "UeLoop":obj = new ai.UeLoop(); break;
            case "ai.UeCooldown":   
            case "UeCooldown":obj = new ai.UeCooldown(); break;
            case "ai.UeTimeLimit":   
            case "UeTimeLimit":obj = new ai.UeTimeLimit(); break;
            case "ai.UeBlackboard":   
            case "UeBlackboard":obj = new ai.UeBlackboard(); break;
            case "ai.UeForceSuccess":   
            case "UeForceSuccess":obj = new ai.UeForceSuccess(); break;
            case "ai.IsAtLocation":   
            case "IsAtLocation":obj = new ai.IsAtLocation(); break;
            case "ai.DistanceLessThan":   
            case "DistanceLessThan":obj = new ai.DistanceLessThan(); break;
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
        
    public static void SaveJsonNode(Node _obj, SimpleJSON.JSONNode _json)
    {
        _json["$type"] = _obj.GetType().Name;
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public int id;

    public string nodeName;

}

}
