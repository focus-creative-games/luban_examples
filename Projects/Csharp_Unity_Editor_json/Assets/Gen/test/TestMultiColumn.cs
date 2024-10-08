
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

public sealed class TestMultiColumn :  Luban.EditorBeanBase 
{
    public TestMultiColumn()
    {
            a = new test.Foo();
            b = new test.Foo();
            c = new test.Foo();
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
            var _fieldJson = _json["a"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsObject) { throw new SerializationException(); }  a = test.Foo.LoadJsonFoo(_fieldJson);
            }
        }
        
        { 
            var _fieldJson = _json["b"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsObject) { throw new SerializationException(); }  b = test.Foo.LoadJsonFoo(_fieldJson);
            }
        }
        
        { 
            var _fieldJson = _json["c"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsObject) { throw new SerializationException(); }  c = test.Foo.LoadJsonFoo(_fieldJson);
            }
        }
        
    }

    public override void SaveJson(SimpleJSON.JSONObject _json)
    {
        {
            _json["id"] = new JSONNumber(id);
        }
        {

            if (a == null) { throw new System.ArgumentNullException(); }
            { var __bjson0 = new JSONObject(); _json["a"] = __bjson0; test.Foo.SaveJsonFoo(a, __bjson0); }
        }
        {

            if (b == null) { throw new System.ArgumentNullException(); }
            { var __bjson0 = new JSONObject(); _json["b"] = __bjson0; test.Foo.SaveJsonFoo(b, __bjson0); }
        }
        {

            if (c == null) { throw new System.ArgumentNullException(); }
            { var __bjson0 = new JSONObject(); _json["c"] = __bjson0; test.Foo.SaveJsonFoo(c, __bjson0); }
        }
    }

    public static TestMultiColumn LoadJsonTestMultiColumn(SimpleJSON.JSONNode _json)
    {
        TestMultiColumn obj = new test.TestMultiColumn();
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonTestMultiColumn(TestMultiColumn _obj, SimpleJSON.JSONNode _json)
    {
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public int id;

    public test.Foo a;

    public test.Foo b;

    public test.Foo c;

}

}

