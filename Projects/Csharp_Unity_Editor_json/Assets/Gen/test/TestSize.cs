
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

public sealed class TestSize :  Luban.EditorBeanBase 
{
    public TestSize()
    {
            x1 = System.Array.Empty<int>();
            x2 = new System.Collections.Generic.List<int>();
            x3 = new System.Collections.Generic.HashSet<int>();
            x4 = new System.Collections.Generic.Dictionary<int,int>();
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
                if(!_fieldJson.IsArray) { throw new SerializationException(); } int _n0 = _fieldJson.Count; x1 = new int[_n0]; int _index0=0; foreach(SimpleJSON.JSONNode __e0 in _fieldJson.Children) { int __v0;  if(!__e0.IsNumber) { throw new SerializationException(); }  __v0 = __e0;  x1[_index0++] = __v0; }  
            }
        }
        
        { 
            var _fieldJson = _json["x2"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } x2 = new System.Collections.Generic.List<int>(); foreach(JSONNode __e0 in _fieldJson.Children) { int __v0;  if(!__e0.IsNumber) { throw new SerializationException(); }  __v0 = __e0;  x2.Add(__v0); }  
            }
        }
        
        { 
            var _fieldJson = _json["x3"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } x3 = new System.Collections.Generic.HashSet<int>(); foreach(JSONNode __e0 in _fieldJson.Children) { int __v0;  if(!__e0.IsNumber) { throw new SerializationException(); }  __v0 = __e0;  x3.Add(__v0); }  
            }
        }
        
        { 
            var _fieldJson = _json["x4"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } x4 = new System.Collections.Generic.Dictionary<int, int>(); foreach(JSONNode __e0 in _fieldJson.Children) { int __k0;  if(!__e0[0].IsNumber) { throw new SerializationException(); }  __k0 = __e0[0]; int __v0;  if(!__e0[1].IsNumber) { throw new SerializationException(); }  __v0 = __e0[1];  x4.Add(__k0, __v0); }  
            }
        }
        
    }

    public override void SaveJson(SimpleJSON.JSONObject _json)
    {
        {
            _json["id"] = new JSONNumber(id);
        }
        {

            if (x1 == null) { throw new System.ArgumentNullException(); }
            { var __cjson0 = new JSONArray(); _json["x1"] = __cjson0; foreach(var _e0 in x1) { JSONNode __v0; __v0 = new JSONNumber(_e0); __cjson0.Add(__v0); } }
        }
        {

            if (x2 == null) { throw new System.ArgumentNullException(); }
            { var __cjson0 = new JSONArray(); _json["x2"] = __cjson0; foreach(var _e0 in x2) { JSONNode __v0; __v0 = new JSONNumber(_e0); __cjson0.Add(__v0); } }
        }
        {

            if (x3 == null) { throw new System.ArgumentNullException(); }
            { var __cjson0 = new JSONArray(); _json["x3"] = __cjson0; foreach(var _e0 in x3) { JSONNode __v0; __v0 = new JSONNumber(_e0); __cjson0.Add(__v0); } }
        }
        {

            if (x4 == null) { throw new System.ArgumentNullException(); }
            { var __cjson0 = new JSONArray(); _json["x4"] = __cjson0; foreach(var _e0 in x4) { var __entry0 = new JSONArray(); __cjson0.Add(__entry0); JSONNode __k0; __k0 = new JSONNumber(_e0.Key); __entry0.Add(__k0); JSONNode __v0; __v0 = new JSONNumber(_e0.Value); __entry0.Add(__v0); }  }
        }
    }

    public static TestSize LoadJsonTestSize(SimpleJSON.JSONNode _json)
    {
        TestSize obj = new test.TestSize();
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonTestSize(TestSize _obj, SimpleJSON.JSONNode _json)
    {
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public int id;

    public int[] x1;

    public System.Collections.Generic.List<int> x2;

    public System.Collections.Generic.HashSet<int> x3;

    public System.Collections.Generic.Dictionary<int, int> x4;

}

}
