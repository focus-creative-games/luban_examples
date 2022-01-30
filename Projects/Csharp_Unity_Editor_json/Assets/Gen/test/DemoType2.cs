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

public sealed partial class DemoType2 :  Bright.Config.EditorBeanBase 
{
    public DemoType2()
    {
            X10 = "";
            X12 = new test.DemoType1();
            X13 = "NONE";
            S1 = new Bright.Config.EditorText("", "");
            T1 = "1970-01-01 00:00:00";
            K1 = System.Array.Empty<int>();
            K2 = new System.Collections.Generic.List<int>();
            K5 = new System.Collections.Generic.HashSet<int>();
            K8 = new System.Collections.Generic.Dictionary<int,int>();
            K9 = new System.Collections.Generic.List<test.DemoE2>();
            K15 = System.Array.Empty<test.DemoDynamic>();
    }

    public override void LoadJson(SimpleJSON.JSONObject _json)
    {
        { 
            var _fieldJson = _json["x4"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  X4 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["x1"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsBoolean) { throw new SerializationException(); }  X1 = _fieldJson;
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
            var _fieldJson = _json["x5"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  X5 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["x6"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  X6 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["x7"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  X7 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["x8_0"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  X80 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["x8"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  X8 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["x9"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  X9 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["x10"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsString) { throw new SerializationException(); }  X10 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["x12"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsObject) { throw new SerializationException(); }  X12 = test.DemoType1.LoadJsonDemoType1(_fieldJson);
            }
        }
        
        { 
            var _fieldJson = _json["x13"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsString) { throw new SerializationException(); }  X13 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["x14"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsObject) { throw new SerializationException(); }  X14 = test.DemoDynamic.LoadJsonDemoDynamic(_fieldJson);
            }
        }
        
        { 
            var _fieldJson = _json["s1"];
            if (_fieldJson != null)
            {
                S1 = Bright.Config.EditorText.LoadJson(_fieldJson);
            }
        }
        
        { 
            var _fieldJson = _json["v2"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsObject) { throw new SerializationException(); }  float __x; if(!_fieldJson["x"].IsNumber) { throw new SerializationException(); }  __x = _fieldJson["x"]; float __y; if(!_fieldJson["y"].IsNumber) { throw new SerializationException(); }  __y = _fieldJson["y"]; V2 = new System.Numerics.Vector2(__x, __y);
            }
        }
        
        { 
            var _fieldJson = _json["v3"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsObject) { throw new SerializationException(); } float __x; if(!_fieldJson["x"].IsNumber) { throw new SerializationException(); }  __x = _fieldJson["x"]; float __y; if(!_fieldJson["y"].IsNumber) { throw new SerializationException(); }  __y = _fieldJson["y"]; float __z; if(!_fieldJson["z"].IsNumber) { throw new SerializationException(); }  __z = _fieldJson["z"];  V3 = new System.Numerics.Vector3(__x, __y,__z);
            }
        }
        
        { 
            var _fieldJson = _json["v4"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsObject) { throw new SerializationException(); } float __x; if(!_fieldJson["x"].IsNumber) { throw new SerializationException(); }  __x = _fieldJson["x"]; float __y; if(!_fieldJson["y"].IsNumber) { throw new SerializationException(); }  __y = _fieldJson["y"]; float __z; if(!_fieldJson["z"].IsNumber) { throw new SerializationException(); }  __z = _fieldJson["z"];  float __w; if(!_fieldJson["w"].IsNumber) { throw new SerializationException(); }  __w = _fieldJson["w"]; V4 = new System.Numerics.Vector4(__x, __y, __z, __w);
            }
        }
        
        { 
            var _fieldJson = _json["t1"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsString) { throw new SerializationException(); }  T1 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["k1"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } int _n = _fieldJson.Count; K1 = new int[_n]; int _index=0; foreach(SimpleJSON.JSONNode __e in _fieldJson.Children) { int __v;  if(!__e.IsNumber) { throw new SerializationException(); }  __v = __e;  K1[_index++] = __v; }  
            }
        }
        
        { 
            var _fieldJson = _json["k2"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } K2 = new System.Collections.Generic.List<int>(); foreach(JSONNode __e in _fieldJson.Children) { int __v;  if(!__e.IsNumber) { throw new SerializationException(); }  __v = __e;  K2.Add(__v); }  
            }
        }
        
        { 
            var _fieldJson = _json["k5"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } K5 = new System.Collections.Generic.HashSet<int>(); foreach(JSONNode __e in _fieldJson.Children) { int __v;  if(!__e.IsNumber) { throw new SerializationException(); }  __v = __e;  K5.Add(__v); }  
            }
        }
        
        { 
            var _fieldJson = _json["k8"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } K8 = new System.Collections.Generic.Dictionary<int, int>(); foreach(JSONNode __e in _fieldJson.Children) { int __k;  if(!__e[0].IsNumber) { throw new SerializationException(); }  __k = __e[0]; int __v;  if(!__e[1].IsNumber) { throw new SerializationException(); }  __v = __e[1];  K8.Add(__k, __v); }  
            }
        }
        
        { 
            var _fieldJson = _json["k9"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } K9 = new System.Collections.Generic.List<test.DemoE2>(); foreach(JSONNode __e in _fieldJson.Children) { test.DemoE2 __v;  if(!__e.IsObject) { throw new SerializationException(); }  __v = test.DemoE2.LoadJsonDemoE2(__e);  K9.Add(__v); }  
            }
        }
        
        { 
            var _fieldJson = _json["k15"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } int _n = _fieldJson.Count; K15 = new test.DemoDynamic[_n]; int _index=0; foreach(SimpleJSON.JSONNode __e in _fieldJson.Children) { test.DemoDynamic __v;  if(!__e.IsObject) { throw new SerializationException(); }  __v = test.DemoDynamic.LoadJsonDemoDynamic(__e);  K15[_index++] = __v; }  
            }
        }
        
    }

    public override void SaveJson(SimpleJSON.JSONObject _json)
    {        
        {
            _json["x4"] = new JSONNumber(X4);
        }
        {
            _json["x1"] = new JSONBool(X1);
        }
        {
            _json["x2"] = new JSONNumber(X2);
        }
        {
            _json["x3"] = new JSONNumber(X3);
        }
        {
            _json["x5"] = new JSONNumber(X5);
        }
        {
            _json["x6"] = new JSONNumber(X6);
        }
        {
            _json["x7"] = new JSONNumber(X7);
        }
        {
            _json["x8_0"] = new JSONNumber(X80);
        }
        {
            _json["x8"] = new JSONNumber(X8);
        }
        {
            _json["x9"] = new JSONNumber(X9);
        }
        {

            if (X10 == null) { throw new System.ArgumentNullException(); }
            _json["x10"] = new JSONString(X10);
        }
        {

            if (X12 == null) { throw new System.ArgumentNullException(); }
            { var __bjson = new JSONObject();  test.DemoType1.SaveJsonDemoType1(X12, __bjson); _json["x12"] = __bjson; }
        }
        {
            _json["x13"] = new JSONString(X13);
        }
        {

            if (X14 == null) { throw new System.ArgumentNullException(); }
            { var __bjson = new JSONObject();  test.DemoDynamic.SaveJsonDemoDynamic(X14, __bjson); _json["x14"] = __bjson; }
        }
        {

            if (S1 == null) { throw new System.ArgumentNullException(); }
            _json["s1"] = Bright.Config.EditorText.SaveJson(S1);
        }
        {
            { var __vjson = new JSONObject(); __vjson["x"] = V2.X;  __vjson["y"] = V2.Y; _json["v2"] = __vjson; }
        }
        {
            { var __vjson = new JSONObject(); __vjson["x"] = V3.X;  __vjson["y"] = V3.Y; __vjson["z"] = V3.Z; _json["v3"] = __vjson; }
        }
        {
            { var __vjson = new JSONObject(); __vjson["x"] = V4.X;  __vjson["y"] = V4.Y; __vjson["z"] = V4.Z; __vjson["w"] = V4.W; _json["v4"] = __vjson; }
        }
        {
            _json["t1"] = new JSONString(T1);
        }
        {

            if (K1 == null) { throw new System.ArgumentNullException(); }
            { var __cjson = new JSONArray(); foreach(var _e in K1) { __cjson["null"] = new JSONNumber(_e); } _json["k1"] = __cjson; }
        }
        {

            if (K2 == null) { throw new System.ArgumentNullException(); }
            { var __cjson = new JSONArray(); foreach(var _e in K2) { __cjson["null"] = new JSONNumber(_e); } _json["k2"] = __cjson; }
        }
        {

            if (K5 == null) { throw new System.ArgumentNullException(); }
            { var __cjson = new JSONArray(); foreach(var _e in K5) { __cjson["null"] = new JSONNumber(_e); } _json["k5"] = __cjson; }
        }
        {

            if (K8 == null) { throw new System.ArgumentNullException(); }
            { var __cjson = new JSONArray(); foreach(var _e in K8) { var __entry = new JSONArray(); __cjson[null] = __entry; __entry["null"] = new JSONNumber(_e.Key); __entry["null"] = new JSONNumber(_e.Value); } _json["k8"] = __cjson; }
        }
        {

            if (K9 == null) { throw new System.ArgumentNullException(); }
            { var __cjson = new JSONArray(); foreach(var _e in K9) { { var __bjson = new JSONObject();  test.DemoE2.SaveJsonDemoE2(_e, __bjson); __cjson["null"] = __bjson; } } _json["k9"] = __cjson; }
        }
        {

            if (K15 == null) { throw new System.ArgumentNullException(); }
            { var __cjson = new JSONArray(); foreach(var _e in K15) { { var __bjson = new JSONObject();  test.DemoDynamic.SaveJsonDemoDynamic(_e, __bjson); __cjson["null"] = __bjson; } } _json["k15"] = __cjson; }
        }
    }

    public static DemoType2 LoadJsonDemoType2(SimpleJSON.JSONNode _json)
    {
        DemoType2 obj = new test.DemoType2();
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonDemoType2(DemoType2 _obj, SimpleJSON.JSONNode _json)
    {
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public int X4 { get; set; }

    public bool X1 { get; set; }

    public byte X2 { get; set; }

    public short X3 { get; set; }

    public long X5 { get; set; }

    public float X6 { get; set; }

    public double X7 { get; set; }

    public short X80 { get; set; }

    public int X8 { get; set; }

    public long X9 { get; set; }

    public string X10 { get; set; }

    public test.DemoType1 X12 { get; set; }

    public string X13 { get; set; }

    public test.DemoDynamic X14 { get; set; }

    public Bright.Config.EditorText S1 { get; set; }

    public System.Numerics.Vector2 V2 { get; set; }

    public System.Numerics.Vector3 V3 { get; set; }

    public System.Numerics.Vector4 V4 { get; set; }

    public string T1 { get; set; }

    public int[] K1 { get; set; }

    public System.Collections.Generic.List<int> K2 { get; set; }

    public System.Collections.Generic.HashSet<int> K5 { get; set; }

    public System.Collections.Generic.Dictionary<int, int> K8 { get; set; }

    public System.Collections.Generic.List<test.DemoE2> K9 { get; set; }

    public test.DemoDynamic[] K15 { get; set; }

}
}