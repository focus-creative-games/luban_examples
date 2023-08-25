
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

public sealed class TestNull :  Luban.EditorBeanBase 
{
    public TestNull()
    {
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
            var _fieldJson = _json["x1"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  x1 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["x2"];
            if (_fieldJson != null)
            {
                if(_fieldJson.IsString) { x2 = (test.DemoEnum?)System.Enum.Parse(typeof(test.DemoEnum?), _fieldJson); } else if(_fieldJson.IsNumber) { x2 = (test.DemoEnum?)(int)_fieldJson; } else { throw new SerializationException(); }  
            }
        }
        
        { 
            var _fieldJson = _json["x3"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsObject) { throw new SerializationException(); }  x3 = test.DemoType1.LoadJsonDemoType1(_fieldJson);
            }
        }
        
        { 
            var _fieldJson = _json["x4"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsObject) { throw new SerializationException(); }  x4 = test.DemoDynamic.LoadJsonDemoDynamic(_fieldJson);
            }
        }
        
        { 
            var _fieldJson = _json["s1"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsString) { throw new SerializationException(); }  s1 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["s2"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsString) { throw new SerializationException(); }  s2 = _fieldJson;
            }
        }
        
    }

    public override void SaveJson(SimpleJSON.JSONObject _json)
    {
        {
            _json["id"] = new JSONNumber(id);
        }

        if (x1 != null)
        {
            _json["x1"] = new JSONNumber(x1.Value);
        }

        if (x2 != null)
        {
            _json["x2"] = new JSONNumber((int)x2);
        }

        if (x3 != null)
        {
            { var __bjson = new JSONObject();  test.DemoType1.SaveJsonDemoType1(x3, __bjson); _json["x3"] = __bjson; }
        }

        if (x4 != null)
        {
            { var __bjson = new JSONObject();  test.DemoDynamic.SaveJsonDemoDynamic(x4, __bjson); _json["x4"] = __bjson; }
        }

        if (s1 != null)
        {
            _json["s1"] = new JSONString(s1);
        }

        if (s2 != null)
        {
            _json["s2"] = new JSONString(s2);
        }
    }

    public static TestNull LoadJsonTestNull(SimpleJSON.JSONNode _json)
    {
        TestNull obj = new test.TestNull();
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonTestNull(TestNull _obj, SimpleJSON.JSONNode _json)
    {
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public int id;

    public int? x1;

    public test.DemoEnum? x2;

    public test.DemoType1 x3;

    public test.DemoDynamic x4;

    public string s1;

    public string s2;

}

}
