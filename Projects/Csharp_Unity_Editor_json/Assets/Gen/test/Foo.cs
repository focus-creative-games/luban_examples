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

public sealed partial class Foo :  Bright.Config.EditorBeanBase 
{
    public Foo()
    {
    }

    public override void LoadJson(SimpleJSON.JSONObject _json)
    {
        { 
            var _fieldJson = _json["y1"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  Y1 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["y2"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  Y2 = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["y3"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  Y3 = _fieldJson;
            }
        }
        
    }

    public override void SaveJson(SimpleJSON.JSONObject _json)
    {        
        {
            _json["y1"] = new JSONNumber(Y1);
        }
        {
            _json["y2"] = new JSONNumber(Y2);
        }
        {
            _json["y3"] = new JSONNumber(Y3);
        }
    }

    public static Foo LoadJsonFoo(SimpleJSON.JSONNode _json)
    {
        Foo obj = new test.Foo();
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonFoo(Foo _obj, SimpleJSON.JSONNode _json)
    {
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public int Y1 { get; set; }

    public int Y2 { get; set; }

    public int Y3 { get; set; }

}
}