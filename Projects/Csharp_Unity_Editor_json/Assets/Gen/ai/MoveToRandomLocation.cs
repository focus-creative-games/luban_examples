
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
using UnityEngine;
using System.Linq;

namespace editor.cfg.ai
{

public sealed class MoveToRandomLocation :  ai.Task 
{
    public MoveToRandomLocation()
    {
            originPositionKey = "";
    }
    public override string GetTypeStr() => TYPE_STR;
    private const string TYPE_STR = "ai.MoveToRandomLocation";

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
                if(!_fieldJson.IsArray) { throw new SerializationException(); } decorators = new System.Collections.Generic.List<ai.Decorator>(); foreach(SimpleJSON.JSONNode __e0 in _fieldJson.Children) { ai.Decorator __v0;  
                if (!__e0.IsObject)
                {
                    throw new SerializationException();
                }
                __v0 = ai.Decorator.LoadJsonDecorator(__e0);
                var __index0 = ai.Decorator.Types.IndexOf(__v0.GetTypeStr());
                if (__index0 == -1)
                {
                    throw new SerializationException();
                }
                __v0.TypeIndex = __index0;
                __v0.Instance = ai.Decorator.LoadJsonDecorator(__e0);  decorators.Add(__v0); }  
            }
        }
        
        { 
            var _fieldJson = _json["services"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } services = new System.Collections.Generic.List<ai.Service>(); foreach(SimpleJSON.JSONNode __e0 in _fieldJson.Children) { ai.Service __v0;  
                if (!__e0.IsObject)
                {
                    throw new SerializationException();
                }
                __v0 = ai.Service.LoadJsonService(__e0);
                var __index0 = ai.Service.Types.IndexOf(__v0.GetTypeStr());
                if (__index0 == -1)
                {
                    throw new SerializationException();
                }
                __v0.TypeIndex = __index0;
                __v0.Instance = ai.Service.LoadJsonService(__e0);  services.Add(__v0); }  
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
            { var __cjson0 = new JSONArray(); foreach(var __e0 in decorators) { { var __bjson = new JSONObject();  ai.Decorator.SaveJsonDecorator(__e0, __bjson); __cjson0["null"] = __bjson; } } _json["decorators"] = __cjson0; }
        }
        {

            if (services == null) { throw new System.ArgumentNullException(); }
            { var __cjson0 = new JSONArray(); foreach(var __e0 in services) { { var __bjson = new JSONObject();  ai.Service.SaveJsonService(__e0, __bjson); __cjson0["null"] = __bjson; } } _json["services"] = __cjson0; }
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


    public override void Render()
    {
        UnityEditor.EditorGUILayout.BeginVertical();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("id", GUILayout.Width(100));
        id = UnityEditor.EditorGUILayout.IntField(id, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("node_name", GUILayout.Width(100));
        nodeName = UnityEditor.EditorGUILayout.TextField(nodeName, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("decorators", GUILayout.Width(100));
        {
            UnityEditor.EditorGUILayout.BeginVertical("Box");
            int __n0 = decorators.Count;
            for (int __i0 = 0; __i0 < __n0; __i0++)
            {
                UnityEditor.EditorGUILayout.BeginHorizontal();
                if (GUILayout.Button("-", GUILayout.Width(20)))
                {
                    decorators.RemoveAt(__i0);
                    UnityEditor.EditorGUILayout.EndHorizontal();
                    break;
                }
                UnityEditor.EditorGUILayout.LabelField(__i0.ToString(), GUILayout.Width(20));
                ai.Decorator __e0 = decorators[__i0];
                {
            var __list1 = ai.Decorator.Types.Select(t => new GUIContent(t)).ToArray();
            UnityEditor.EditorGUILayout.BeginVertical("Box");
            if (__e0 == null)
            {
                __e0 = new ai.UeLoop();
                __e0.TypeIndex = 0;
            }
            UnityEditor.EditorGUILayout.BeginHorizontal();
            UnityEditor.EditorGUILayout.LabelField("类型", GUILayout.Width(100));
            __e0.TypeIndex = UnityEditor.EditorGUILayout.Popup(__e0.TypeIndex, __list1, GUILayout.Width(200));
            UnityEditor.EditorGUILayout.EndHorizontal();
            __e0.Instance.Render();
            UnityEditor.EditorGUILayout.EndVertical();
        };
                decorators[__i0] = __e0;
                UnityEditor.EditorGUILayout.EndHorizontal();
            }
            if (GUILayout.Button("+", GUILayout.Width(20)))
            {
                decorators.Add(default);
            }
            UnityEditor.EditorGUILayout.EndVertical();
        }
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("services", GUILayout.Width(100));
        {
            UnityEditor.EditorGUILayout.BeginVertical("Box");
            int __n0 = services.Count;
            for (int __i0 = 0; __i0 < __n0; __i0++)
            {
                UnityEditor.EditorGUILayout.BeginHorizontal();
                if (GUILayout.Button("-", GUILayout.Width(20)))
                {
                    services.RemoveAt(__i0);
                    UnityEditor.EditorGUILayout.EndHorizontal();
                    break;
                }
                UnityEditor.EditorGUILayout.LabelField(__i0.ToString(), GUILayout.Width(20));
                ai.Service __e0 = services[__i0];
                {
            var __list1 = ai.Service.Types.Select(t => new GUIContent(t)).ToArray();
            UnityEditor.EditorGUILayout.BeginVertical("Box");
            if (__e0 == null)
            {
                __e0 = new ai.UeSetDefaultFocus();
                __e0.TypeIndex = 0;
            }
            UnityEditor.EditorGUILayout.BeginHorizontal();
            UnityEditor.EditorGUILayout.LabelField("类型", GUILayout.Width(100));
            __e0.TypeIndex = UnityEditor.EditorGUILayout.Popup(__e0.TypeIndex, __list1, GUILayout.Width(200));
            UnityEditor.EditorGUILayout.EndHorizontal();
            __e0.Instance.Render();
            UnityEditor.EditorGUILayout.EndVertical();
        };
                services[__i0] = __e0;
                UnityEditor.EditorGUILayout.EndHorizontal();
            }
            if (GUILayout.Button("+", GUILayout.Width(20)))
            {
                services.Add(default);
            }
            UnityEditor.EditorGUILayout.EndVertical();
        }
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("ignore_restart_self", GUILayout.Width(100));
        ignoreRestartSelf = UnityEditor.EditorGUILayout.Toggle(ignoreRestartSelf, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("origin_position_key", GUILayout.Width(100));
        originPositionKey = UnityEditor.EditorGUILayout.TextField(originPositionKey, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("radius", GUILayout.Width(100));
        radius = UnityEditor.EditorGUILayout.FloatField(radius, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.EndVertical();
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
    public UnityEngine.Object originPositionKey_UnityObject;
    public float radius;
    public UnityEngine.Object radius_UnityObject;

    public override string ToString()
    {
        return "{ "
        + "id:" + id + ","
        + "nodeName:" + nodeName + ","
        + "decorators:" + Luban.StringUtil.CollectionToString(decorators) + ","
        + "services:" + Luban.StringUtil.CollectionToString(services) + ","
        + "ignoreRestartSelf:" + ignoreRestartSelf + ","
        + "originPositionKey:" + originPositionKey + ","
        + "radius:" + radius + ","
        + "}";
    }
}

}

