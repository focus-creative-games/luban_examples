
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

public sealed class TestRow :  Luban.EditorBeanBase 
{
    public TestRow()
    {
            z = "";
            a = new test.Test3();
            b = new System.Collections.Generic.List<int>();
    }

    public override void LoadJson(SimpleJSON.JSONObject _json)
    {
        { 
            var _fieldJson = _json["x"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  x = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["y"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsBoolean) { throw new SerializationException(); }  y = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["z"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsString) { throw new SerializationException(); }  z = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["a"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsObject) { throw new SerializationException(); }  a = test.Test3.LoadJsonTest3(_fieldJson);
            }
        }
        
        { 
            var _fieldJson = _json["b"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } b = new System.Collections.Generic.List<int>(); foreach(JSONNode __e0 in _fieldJson.Children) { int __v0;  if(!__e0.IsNumber) { throw new SerializationException(); }  __v0 = __e0;  b.Add(__v0); }  
            }
        }
        
    }

    public override void SaveJson(SimpleJSON.JSONObject _json)
    {
        {
            _json["x"] = new JSONNumber(x);
        }
        {
            _json["y"] = new JSONBool(y);
        }
        {

            if (z == null) { throw new System.ArgumentNullException(); }
            _json["z"] = new JSONString(z);
        }
        {

            if (a == null) { throw new System.ArgumentNullException(); }
            { var __bjson0 = new JSONObject(); _json["a"] = __bjson0; test.Test3.SaveJsonTest3(a, __bjson0); }
        }
        {

            if (b == null) { throw new System.ArgumentNullException(); }
            { var __cjson0 = new JSONArray(); _json["b"] = __cjson0; foreach(var _e0 in b) { JSONNode __v0; __v0 = new JSONNumber(_e0); __cjson0.Add(__v0); } }
        }
    }

    public static TestRow LoadJsonTestRow(SimpleJSON.JSONNode _json)
    {
        TestRow obj = new test.TestRow();
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonTestRow(TestRow _obj, SimpleJSON.JSONNode _json)
    {
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public int x;

    public bool y;

    public string z;

    public test.Test3 a;

    public System.Collections.Generic.List<int> b;

}

}

