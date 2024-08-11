
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

public sealed class Blackboard :  Luban.EditorBeanBase 
{
    public Blackboard()
    {
            name = "";
            desc = "";
            parentName = "";
            keys = new System.Collections.Generic.List<ai.BlackboardKey>();
    }

    public override void LoadJson(SimpleJSON.JSONObject _json)
    {
        { 
            var _fieldJson = _json["name"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsString) { throw new SerializationException(); }  name = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["desc"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsString) { throw new SerializationException(); }  desc = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["parent_name"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsString) { throw new SerializationException(); }  parentName = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["keys"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } keys = new System.Collections.Generic.List<ai.BlackboardKey>(); foreach(SimpleJSON.JSONNode __e0 in _fieldJson.Children) { ai.BlackboardKey __v0;  if(!__e0.IsObject) { throw new SerializationException(); }  __v0 = ai.BlackboardKey.LoadJsonBlackboardKey(__e0);  keys.Add(__v0); }  
            }
        }
        
    }

    public override void SaveJson(SimpleJSON.JSONObject _json)
    {
        {

            if (name == null) { throw new System.ArgumentNullException(); }
            _json["name"] = new JSONString(name);
        }
        {

            if (desc == null) { throw new System.ArgumentNullException(); }
            _json["desc"] = new JSONString(desc);
        }
        {

            if (parentName == null) { throw new System.ArgumentNullException(); }
            _json["parent_name"] = new JSONString(parentName);
        }
        {

            if (keys == null) { throw new System.ArgumentNullException(); }
            { var __cjson0 = new JSONArray(); foreach(var __e0 in keys) { { var __bjson = new JSONObject();  ai.BlackboardKey.SaveJsonBlackboardKey(__e0, __bjson); __cjson0["null"] = __bjson; } } _json["keys"] = __cjson0; }
        }
    }


    public override void Render()
    {
        UnityEditor.EditorGUILayout.BeginVertical();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("name", GUILayout.Width(100));
        name = UnityEditor.EditorGUILayout.TextField(name, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("desc", GUILayout.Width(100));
        desc = UnityEditor.EditorGUILayout.TextField(desc, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("parent_name", GUILayout.Width(100));
        parentName = UnityEditor.EditorGUILayout.TextField(parentName, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("keys", GUILayout.Width(100));
        {
            UnityEditor.EditorGUILayout.BeginVertical("Box");
            int __n0 = keys.Count;
            for (int __i0 = 0; __i0 < __n0; __i0++)
            {
                UnityEditor.EditorGUILayout.BeginHorizontal();
                if (GUILayout.Button("-", GUILayout.Width(20)))
                {
                    keys.RemoveAt(__i0);
                    UnityEditor.EditorGUILayout.EndHorizontal();
                    break;
                }
                UnityEditor.EditorGUILayout.LabelField(__i0.ToString(), GUILayout.Width(20));
                ai.BlackboardKey __e0 = keys[__i0];
                {
            UnityEditor.EditorGUILayout.BeginVertical("Box");UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("name");
        __e0.name = UnityEditor.EditorGUILayout.TextField(__e0.name, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("desc");
        __e0.desc = UnityEditor.EditorGUILayout.TextField(__e0.desc, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("is_static");
        __e0.isStatic = UnityEditor.EditorGUILayout.Toggle(__e0.isStatic, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("key_type");
        __e0.keyType = (ai.EKeyType)UnityEditor.EditorGUILayout.EnumPopup(__e0.keyType, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("type_class_name");
        __e0.typeClassName = UnityEditor.EditorGUILayout.TextField(__e0.typeClassName, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();    UnityEditor.EditorGUILayout.EndVertical();
        };
                keys[__i0] = __e0;
                UnityEditor.EditorGUILayout.EndHorizontal();
            }
            if (GUILayout.Button("+", GUILayout.Width(20)))
            {
                keys.Add(new ai.BlackboardKey());
            }
            UnityEditor.EditorGUILayout.EndVertical();
        }
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.EndVertical();
    }

    public static Blackboard LoadJsonBlackboard(SimpleJSON.JSONNode _json)
    {
        Blackboard obj = new ai.Blackboard();
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonBlackboard(Blackboard _obj, SimpleJSON.JSONNode _json)
    {
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public string name;
    public UnityEngine.Object name_UnityObject;
    public string desc;
    public UnityEngine.Object desc_UnityObject;
    public string parentName;
    public UnityEngine.Object parentName_UnityObject;
    public System.Collections.Generic.List<ai.BlackboardKey> keys;
    public UnityEngine.Object keys_UnityObject;

    public override string ToString()
    {
        return "{ "
        + "name:" + name + ","
        + "desc:" + desc + ","
        + "parentName:" + parentName + ","
        + "keys:" + Luban.StringUtil.CollectionToString(keys) + ","
        + "}";
    }
}

}

