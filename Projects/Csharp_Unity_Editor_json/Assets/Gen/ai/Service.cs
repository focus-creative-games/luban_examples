
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

public abstract class Service :  ai.Node 
{
    public Service()
    {
    }


    public static Service LoadJsonService(SimpleJSON.JSONNode _json)
    {
        string type = _json["$type"];
        Service obj;
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
            default: throw new SerializationException();
        }
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonService(Service _obj, SimpleJSON.JSONNode _json)
    {
        _json["$type"] = _obj.GetType().Name;
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

}

}

