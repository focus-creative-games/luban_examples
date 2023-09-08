
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

namespace editor.cfg.ai
{

public sealed class MoveToRandomLocation :  ai.Task 
{
    public MoveToRandomLocation()
    {
            originPositionKey = "";
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
            var _fieldJson = _json["node_name"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsString) { throw new SerializationException(); }  nodeName = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["decorators"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } decorators = new System.Collections.Generic.List<ai.Decorator>(); foreach(JSONNode __e in _fieldJson.Children) { ai.Decorator __v;  if(!__e.IsObject) { throw new SerializationException(); }  __v = ai.Decorator.LoadJsonDecorator(__e);  decorators.Add(__v); }  
            }
        }
        
        { 
            var _fieldJson = _json["services"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } services = new System.Collections.Generic.List<ai.Service>(); foreach(JSONNode __e in _fieldJson.Children) { ai.Service __v;  if(!__e.IsObject) { throw new SerializationException(); }  __v = ai.Service.LoadJsonService(__e);  services.Add(__v); }  
            }
        }
        
        { 
            var _fieldJson = _json["ignore_restart_self"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsBoolean) { throw new SerializationException(); }  ignoreRestartSelf = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["origin_position_key"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsString) { throw new SerializationException(); }  originPositionKey = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["radius"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  radius = _fieldJson;
            }
        }
        
    }

    public override void SaveJson(SimpleJSON.JSONObject _json)
    {
        {
            _json["id"] = new JSONNumber(id);
        }
        {

            if (nodeName == null) { throw new System.ArgumentNullException(); }
            _json["node_name"] = new JSONString(nodeName);
        }
        {

            if (decorators == null) { throw new System.ArgumentNullException(); }
            { var __cjson = new JSONArray(); foreach(var _e in decorators) { { var __bjson = new JSONObject();  ai.Decorator.SaveJsonDecorator(_e, __bjson); __cjson["null"] = __bjson; } } _json["decorators"] = __cjson; }
        }
        {

            if (services == null) { throw new System.ArgumentNullException(); }
            { var __cjson = new JSONArray(); foreach(var _e in services) { { var __bjson = new JSONObject();  ai.Service.SaveJsonService(_e, __bjson); __cjson["null"] = __bjson; } } _json["services"] = __cjson; }
        }
        {
            _json["ignore_restart_self"] = new JSONBool(ignoreRestartSelf);
        }
        {

            if (originPositionKey == null) { throw new System.ArgumentNullException(); }
            _json["origin_position_key"] = new JSONString(originPositionKey);
        }
        {
            _json["radius"] = new JSONNumber(radius);
        }
    }

    public static MoveToRandomLocation LoadJsonMoveToRandomLocation(SimpleJSON.JSONNode _json)
    {
        MoveToRandomLocation obj = new ai.MoveToRandomLocation();
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonMoveToRandomLocation(MoveToRandomLocation _obj, SimpleJSON.JSONNode _json)
    {
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public string originPositionKey;

    public float radius;

}

}
