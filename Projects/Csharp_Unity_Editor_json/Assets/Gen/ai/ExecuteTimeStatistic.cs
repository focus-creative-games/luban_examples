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



namespace editor.cfg.ai
{

public sealed partial class ExecuteTimeStatistic :  ai.Service 
{
    public ExecuteTimeStatistic()
    {
    }

    public override void LoadJson(SimpleJSON.JSONObject _json)
    {
        base.LoadJson(_json);
    }

    public override void SaveJson(SimpleJSON.JSONObject _json)
    {        
        base.SaveJson(_json);
    }

    public static ExecuteTimeStatistic LoadJsonExecuteTimeStatistic(SimpleJSON.JSONNode _json)
    {
        ExecuteTimeStatistic obj = new ai.ExecuteTimeStatistic();
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonExecuteTimeStatistic(ExecuteTimeStatistic _obj, SimpleJSON.JSONNode _json)
    {
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

}
}