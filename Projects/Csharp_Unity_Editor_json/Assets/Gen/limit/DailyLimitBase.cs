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



namespace editor.cfg.limit
{

public abstract partial class DailyLimitBase :  limit.LimitBase 
{
    public DailyLimitBase()
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

    public static DailyLimitBase LoadJsonDailyLimitBase(SimpleJSON.JSONNode _json)
    {
        string type = _json["__type__"];
        DailyLimitBase obj;
        switch (type)
        {
            case "DailyLimit": obj = new limit.DailyLimit(); break;
            default: throw new SerializationException();
        }
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonDailyLimitBase(DailyLimitBase _obj, SimpleJSON.JSONNode _json)
    {
        _json["__type__"] = _obj.GetType().Name;
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

}
}