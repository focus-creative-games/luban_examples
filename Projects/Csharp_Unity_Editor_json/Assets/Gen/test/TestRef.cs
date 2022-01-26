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



namespace editor.cfg.test
{

public sealed partial class TestRef :  Bright.Config.EditorBeanBase 
{
    public TestRef()
    {
            A1 = System.Array.Empty<int>();
            A2 = System.Array.Empty<int>();
            B1 = new System.Collections.Generic.List<int>();
            B2 = new System.Collections.Generic.List<int>();
            C1 = new System.Collections.Generic.HashSet<int>();
            C2 = new System.Collections.Generic.HashSet<int>();
            D1 = new System.Collections.Generic.Dictionary<int,int>();
            D2 = new System.Collections.Generic.Dictionary<int,int>();
            E3 = "";
            F3 = "";
    }

    public override void LoadJson(SimpleJSON.JSONObject _json)
    {
        { 
            var _fieldJson = _json["id"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  Id = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["x1"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  X1 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["x1_2"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  X12 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["x2"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  X2 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["x3"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  X3 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["a1"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } int _n = _fieldJson.Count; A1 = new int[_n]; int _index=0; foreach(SimpleJSON.JSONNode __e in _fieldJson.Children) { int __v;  if(!__e.IsNumber) { throw new SerializationException(); }  __v = __e;  A1[_index++] = __v; }  
            }
        }
        
        { 
            var _fieldJson = _json["a2"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } int _n = _fieldJson.Count; A2 = new int[_n]; int _index=0; foreach(SimpleJSON.JSONNode __e in _fieldJson.Children) { int __v;  if(!__e.IsNumber) { throw new SerializationException(); }  __v = __e;  A2[_index++] = __v; }  
            }
        }
        
        { 
            var _fieldJson = _json["b1"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } B1 = new System.Collections.Generic.List<int>(); foreach(JSONNode __e in _fieldJson.Children) { int __v;  if(!__e.IsNumber) { throw new SerializationException(); }  __v = __e;  B1.Add(__v); }  
            }
        }
        
        { 
            var _fieldJson = _json["b2"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } B2 = new System.Collections.Generic.List<int>(); foreach(JSONNode __e in _fieldJson.Children) { int __v;  if(!__e.IsNumber) { throw new SerializationException(); }  __v = __e;  B2.Add(__v); }  
            }
        }
        
        { 
            var _fieldJson = _json["c1"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } C1 = new System.Collections.Generic.HashSet<int>(); foreach(JSONNode __e in _fieldJson.Children) { int __v;  if(!__e.IsNumber) { throw new SerializationException(); }  __v = __e;  C1.Add(__v); }  
            }
        }
        
        { 
            var _fieldJson = _json["c2"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } C2 = new System.Collections.Generic.HashSet<int>(); foreach(JSONNode __e in _fieldJson.Children) { int __v;  if(!__e.IsNumber) { throw new SerializationException(); }  __v = __e;  C2.Add(__v); }  
            }
        }
        
        { 
            var _fieldJson = _json["d1"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } D1 = new System.Collections.Generic.Dictionary<int, int>(); foreach(JSONNode __e in _fieldJson.Children) { int __k;  if(!__e[0].IsNumber) { throw new SerializationException(); }  __k = __e[0]; int __v;  if(!__e[1].IsNumber) { throw new SerializationException(); }  __v = __e[1];  D1.Add(__k, __v); }  
            }
        }
        
        { 
            var _fieldJson = _json["d2"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } D2 = new System.Collections.Generic.Dictionary<int, int>(); foreach(JSONNode __e in _fieldJson.Children) { int __k;  if(!__e[0].IsNumber) { throw new SerializationException(); }  __k = __e[0]; int __v;  if(!__e[1].IsNumber) { throw new SerializationException(); }  __v = __e[1];  D2.Add(__k, __v); }  
            }
        }
        
        { 
            var _fieldJson = _json["e1"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  E1 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["e2"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  E2 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["e3"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsString) { throw new SerializationException(); }  E3 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["f1"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  F1 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["f2"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  F2 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["f3"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsString) { throw new SerializationException(); }  F3 = _fieldJson;
            }
        }
        
    }

    public override void SaveJson(SimpleJSON.JSONObject _json)
    {        
        {
            _json["id"] = new JSONNumber(Id);
        }
        {
            _json["x1"] = new JSONNumber(X1);
        }
        {
            _json["x1_2"] = new JSONNumber(X12);
        }
        {
            _json["x2"] = new JSONNumber(X2);
        }
        {
            _json["x3"] = new JSONNumber(X3);
        }
        {

            if (A1 == null) { throw new System.ArgumentNullException(); }
            { var __cjson = new JSONArray(); foreach(var _e in A1) { __cjson["null"] = new JSONNumber(_e); } _json["a1"] = __cjson; }
        }
        {

            if (A2 == null) { throw new System.ArgumentNullException(); }
            { var __cjson = new JSONArray(); foreach(var _e in A2) { __cjson["null"] = new JSONNumber(_e); } _json["a2"] = __cjson; }
        }
        {

            if (B1 == null) { throw new System.ArgumentNullException(); }
            { var __cjson = new JSONArray(); foreach(var _e in B1) { __cjson["null"] = new JSONNumber(_e); } _json["b1"] = __cjson; }
        }
        {

            if (B2 == null) { throw new System.ArgumentNullException(); }
            { var __cjson = new JSONArray(); foreach(var _e in B2) { __cjson["null"] = new JSONNumber(_e); } _json["b2"] = __cjson; }
        }
        {

            if (C1 == null) { throw new System.ArgumentNullException(); }
            { var __cjson = new JSONArray(); foreach(var _e in C1) { __cjson["null"] = new JSONNumber(_e); } _json["c1"] = __cjson; }
        }
        {

            if (C2 == null) { throw new System.ArgumentNullException(); }
            { var __cjson = new JSONArray(); foreach(var _e in C2) { __cjson["null"] = new JSONNumber(_e); } _json["c2"] = __cjson; }
        }
        {

            if (D1 == null) { throw new System.ArgumentNullException(); }
            { var __cjson = new JSONArray(); foreach(var _e in D1) { var __entry = new JSONArray(); __cjson[null] = __entry; __entry["null"] = new JSONNumber(_e.Key); __entry["null"] = new JSONNumber(_e.Value); } _json["d1"] = __cjson; }
        }
        {

            if (D2 == null) { throw new System.ArgumentNullException(); }
            { var __cjson = new JSONArray(); foreach(var _e in D2) { var __entry = new JSONArray(); __cjson[null] = __entry; __entry["null"] = new JSONNumber(_e.Key); __entry["null"] = new JSONNumber(_e.Value); } _json["d2"] = __cjson; }
        }
        {
            _json["e1"] = new JSONNumber(E1);
        }
        {
            _json["e2"] = new JSONNumber(E2);
        }
        {

            if (E3 == null) { throw new System.ArgumentNullException(); }
            _json["e3"] = new JSONString(E3);
        }
        {
            _json["f1"] = new JSONNumber(F1);
        }
        {
            _json["f2"] = new JSONNumber(F2);
        }
        {

            if (F3 == null) { throw new System.ArgumentNullException(); }
            _json["f3"] = new JSONString(F3);
        }
    }

    public static TestRef LoadJsonTestRef(SimpleJSON.JSONNode _json)
    {
        TestRef obj = new test.TestRef();
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonTestRef(TestRef _obj, SimpleJSON.JSONNode _json)
    {
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public int Id { get; set; }

    public int X1 { get; set; }

    public int X12 { get; set; }

    public int X2 { get; set; }

    public int X3 { get; set; }

    public int[] A1 { get; set; }

    public int[] A2 { get; set; }

    public System.Collections.Generic.List<int> B1 { get; set; }

    public System.Collections.Generic.List<int> B2 { get; set; }

    public System.Collections.Generic.HashSet<int> C1 { get; set; }

    public System.Collections.Generic.HashSet<int> C2 { get; set; }

    public System.Collections.Generic.Dictionary<int, int> D1 { get; set; }

    public System.Collections.Generic.Dictionary<int, int> D2 { get; set; }

    public int E1 { get; set; }

    public long E2 { get; set; }

    public string E3 { get; set; }

    public int F1 { get; set; }

    public long F2 { get; set; }

    public string F3 { get; set; }

}
}
