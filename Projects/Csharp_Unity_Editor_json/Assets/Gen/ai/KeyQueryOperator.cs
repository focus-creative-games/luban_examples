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

public abstract partial class KeyQueryOperator :  Bright.Config.EditorBeanBase 
{
    public KeyQueryOperator()
    {
    }

    public override void LoadJson(SimpleJSON.JSONObject _json)
    {
    }

    public override void SaveJson(SimpleJSON.JSONObject _json)
    {        
    }

    public static KeyQueryOperator LoadJsonKeyQueryOperator(SimpleJSON.JSONNode _json)
    {
        string type = _json["$type"];
        KeyQueryOperator obj;
        switch (type)
        {
            case "IsSet": obj = new ai.IsSet(); break;
            case "IsNotSet": obj = new ai.IsNotSet(); break;
            case "BinaryOperator": obj = new ai.BinaryOperator(); break;
            default: throw new SerializationException();
        }
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonKeyQueryOperator(KeyQueryOperator _obj, SimpleJSON.JSONNode _json)
    {
        _json["$type"] = _obj.GetType().Name;
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

}
}
