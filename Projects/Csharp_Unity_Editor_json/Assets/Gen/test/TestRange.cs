
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

public sealed class TestRange :  Luban.EditorBeanBase 
{
    public TestRange()
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
            var _fieldJson = _json["f1"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  f1 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["f2"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  f2 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["d1"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  d1 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["d2"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  d2 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["i1"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  i1 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["i2"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  i2 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["i3"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  i3 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["i4"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  i4 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["l1"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  l1 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["l2"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  l2 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["l3"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  l3 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["l4"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  l4 = _fieldJson;
            }
        }
        
    }

    public override void SaveJson(SimpleJSON.JSONObject _json)
    {
        {
            _json["id"] = new JSONNumber(id);
        }
        {
            _json["f1"] = new JSONNumber(f1);
        }
        {
            _json["f2"] = new JSONNumber(f2);
        }
        {
            _json["d1"] = new JSONNumber(d1);
        }
        {
            _json["d2"] = new JSONNumber(d2);
        }
        {
            _json["i1"] = new JSONNumber(i1);
        }
        {
            _json["i2"] = new JSONNumber(i2);
        }
        {
            _json["i3"] = new JSONNumber(i3);
        }
        {
            _json["i4"] = new JSONNumber(i4);
        }
        {
            _json["l1"] = new JSONNumber(l1);
        }
        {
            _json["l2"] = new JSONNumber(l2);
        }
        {
            _json["l3"] = new JSONNumber(l3);
        }
        {
            _json["l4"] = new JSONNumber(l4);
        }
    }

    public static TestRange LoadJsonTestRange(SimpleJSON.JSONNode _json)
    {
        TestRange obj = new test.TestRange();
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonTestRange(TestRange _obj, SimpleJSON.JSONNode _json)
    {
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public int id;

    public float f1;

    public float f2;

    public double d1;

    public double d2;

    public int i1;

    public int i2;

    public int i3;

    public int i4;

    public long l1;

    public long l2;

    public long l3;

    public long l4;

}

}

