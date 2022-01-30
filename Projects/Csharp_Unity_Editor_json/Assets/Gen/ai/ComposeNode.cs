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

public abstract partial class ComposeNode :  ai.FlowNode 
{
    public ComposeNode()
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

    public static ComposeNode LoadJsonComposeNode(SimpleJSON.JSONNode _json)
    {
        string type = _json["__type__"];
        ComposeNode obj;
        switch (type)
        {
            case "Sequence": obj = new ai.Sequence(); break;
            case "Selector": obj = new ai.Selector(); break;
            case "SimpleParallel": obj = new ai.SimpleParallel(); break;
            default: throw new SerializationException();
        }
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonComposeNode(ComposeNode _obj, SimpleJSON.JSONNode _json)
    {
        _json["__type__"] = _obj.GetType().Name;
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

}
}