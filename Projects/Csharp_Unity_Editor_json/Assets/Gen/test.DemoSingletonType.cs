
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

namespace editor.cfg.test
{

public sealed class DemoSingletonType :  Luban.EditorBeanBase 
{
    public DemoSingletonType()
    {
            name = "";
    }

    public override void LoadJson(SimpleJSON.JSONObject _json)
    {
        { 
            var _fieldJson = _json["id"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  id = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["name"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsString) { throw new SerializationException(); }  name = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["date"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsObject) { throw new SerializationException(); }  date = test.DemoDynamic.LoadJsonDemoDynamic(_fieldJson);
            }
        }
        
    }

    public override void SaveJson(SimpleJSON.JSONObject _json)
    {
        {
            _json["id"] = new JSONNumber(id);
        }
        {

            if (name == null) { throw new System.ArgumentNullException(); }
            _json["name"] = new JSONString(name);
        }
        {

            if (date == null) { throw new System.ArgumentNullException(); }
            { var __bjson = new JSONObject();  test.DemoDynamic.SaveJsonDemoDynamic(date, __bjson); _json["date"] = __bjson; }
        }
    }

    public static DemoSingletonType LoadJsonDemoSingletonType(SimpleJSON.JSONNode _json)
    {
        DemoSingletonType obj = new test.DemoSingletonType();
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonDemoSingletonType(DemoSingletonType _obj, SimpleJSON.JSONNode _json)
    {
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public int id;

    public string name;

    public test.DemoDynamic date;

}

}
