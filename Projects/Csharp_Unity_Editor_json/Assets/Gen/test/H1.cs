
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

public sealed class H1 :  Luban.EditorBeanBase 
{
    public H1()
    {
            y2 = new test.H2();
    }

    public override void LoadJson(SimpleJSON.JSONObject _json)
    {
        { 
            var _fieldJson = _json["y2"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsObject) { throw new SerializationException(); }  y2 = test.H2.LoadJsonH2(_fieldJson);
            }
        }
        
        { 
            var _fieldJson = _json["y3"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  y3 = _fieldJson;
            }
        }
        
    }

    public override void SaveJson(SimpleJSON.JSONObject _json)
    {
        {

            if (y2 == null) { throw new System.ArgumentNullException(); }
            { var __bjson0 = new JSONObject(); _json["y2"] = __bjson0; test.H2.SaveJsonH2(y2, __bjson0); }
        }
        {
            _json["y3"] = new JSONNumber(y3);
        }
    }

    public static H1 LoadJsonH1(SimpleJSON.JSONNode _json)
    {
        H1 obj = new test.H1();
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonH1(H1 _obj, SimpleJSON.JSONNode _json)
    {
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public test.H2 y2;

    public int y3;

}

}

