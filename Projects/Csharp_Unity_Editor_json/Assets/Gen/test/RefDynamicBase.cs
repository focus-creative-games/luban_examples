
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

namespace cfg.test
{

public abstract class RefDynamicBase :  Luban.EditorBeanBase 
{
    public RefDynamicBase()
    {
    }


    public static RefDynamicBase LoadJsonRefDynamicBase(SimpleJSON.JSONNode _json)
    {
        string type = _json["$type"];
        RefDynamicBase obj;
        switch (type)
        {
            case "test.RefBean":   
            case "RefBean":obj = new test.RefBean(); break;
            default: throw new SerializationException();
        }
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonRefDynamicBase(RefDynamicBase _obj, SimpleJSON.JSONNode _json)
    {
        _json["$type"] = _obj.GetType().Name;
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public int x;

}

}

