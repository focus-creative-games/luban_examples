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



namespace editor.cfg.common
{

public sealed partial class TimeOfDay :  Bright.Config.EditorBeanBase 
{
    public TimeOfDay()
    {
    }

    public override void LoadJson(SimpleJSON.JSONObject _json)
    {
        { 
            var _fieldJson = _json["hour"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  Hour = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["minute"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  Minute = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["second"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  Second = _fieldJson;
            }
        }
        
    }

    public override void SaveJson(SimpleJSON.JSONObject _json)
    {        
        {
            _json["hour"] = new JSONNumber(Hour);
        }
        {
            _json["minute"] = new JSONNumber(Minute);
        }
        {
            _json["second"] = new JSONNumber(Second);
        }
    }

    public static TimeOfDay LoadJsonTimeOfDay(SimpleJSON.JSONNode _json)
    {
        TimeOfDay obj = new common.TimeOfDay();
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonTimeOfDay(TimeOfDay _obj, SimpleJSON.JSONNode _json)
    {
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public int Hour { get; set; }

    public int Minute { get; set; }

    public int Second { get; set; }

}
}