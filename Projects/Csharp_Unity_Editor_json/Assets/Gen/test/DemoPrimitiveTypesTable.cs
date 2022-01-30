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

public sealed partial class DemoPrimitiveTypesTable :  Bright.Config.EditorBeanBase 
{
    public DemoPrimitiveTypesTable()
    {
            S1 = "";
            S2 = new Bright.Config.EditorText("", "");
            T1 = "1970-01-01 00:00:00";
    }

    public override void LoadJson(SimpleJSON.JSONObject _json)
    {
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
            var _fieldJson = _json["x4"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  X4 = _fieldJson;
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
            var _fieldJson = _json["s1"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsString) { throw new SerializationException(); }  S1 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["s2"];
            if (_fieldJson != null)
            {
                S2 = Bright.Config.EditorText.LoadJson(_fieldJson);
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
        
    }

    public override void SaveJson(SimpleJSON.JSONObject _json)
    {        
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
            _json["x4"] = new JSONNumber(X4);
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

            if (S1 == null) { throw new System.ArgumentNullException(); }
            _json["s1"] = new JSONString(S1);
        }
        {

            if (S2 == null) { throw new System.ArgumentNullException(); }
            _json["s2"] = Bright.Config.EditorText.SaveJson(S2);
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
    }

    public static DemoPrimitiveTypesTable LoadJsonDemoPrimitiveTypesTable(SimpleJSON.JSONNode _json)
    {
        DemoPrimitiveTypesTable obj = new test.DemoPrimitiveTypesTable();
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonDemoPrimitiveTypesTable(DemoPrimitiveTypesTable _obj, SimpleJSON.JSONNode _json)
    {
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public bool X1 { get; set; }

    public byte X2 { get; set; }

    public short X3 { get; set; }

    public int X4 { get; set; }

    public long X5 { get; set; }

    public float X6 { get; set; }

    public double X7 { get; set; }

    public string S1 { get; set; }

    public Bright.Config.EditorText S2 { get; set; }

    public System.Numerics.Vector2 V2 { get; set; }

    public System.Numerics.Vector3 V3 { get; set; }

    public System.Numerics.Vector4 V4 { get; set; }

    public string T1 { get; set; }

}
}