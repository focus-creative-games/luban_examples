
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

public sealed class BehaviorTree :  Luban.EditorBeanBase 
{
    public BehaviorTree()
    {
            name = "";
            desc = "";
            blackboardId = "";
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
            var _fieldJson = _json["blackboard_id"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsString) { throw new SerializationException(); }  blackboardId = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["root"];
            if (_fieldJson != null)
            {
                
                if (!_fieldJson.IsObject)
                {
                    throw new SerializationException();
                }
                root = ai.ComposeNode.LoadJsonComposeNode(_fieldJson);
                var __index0 = ai.ComposeNode.Types.IndexOf(root.GetTypeStr());
                if (__index0 == -1)
                {
                    throw new SerializationException();
                }
                root.TypeIndex = __index0;
                root.Instance = ai.ComposeNode.LoadJsonComposeNode(_fieldJson);
            }
        }
        
    }

    public override void SaveJson(SimpleJSON.JSONObject _json)
    {
        {
            _json["id"] = new JSONNumber(id);
        }
        {

            if (name == null) { throw new System.ArgumentNullException(); }
            _json["name"] = new JSONString(name);
        }
        {

            if (desc == null) { throw new System.ArgumentNullException(); }
            _json["desc"] = new JSONString(desc);
        }
        {

            if (blackboardId == null) { throw new System.ArgumentNullException(); }
            _json["blackboard_id"] = new JSONString(blackboardId);
        }
        {

            if (root == null) { throw new System.ArgumentNullException(); }
            { var __bjson = new JSONObject();  ai.ComposeNode.SaveJsonComposeNode(root, __bjson); _json["root"] = __bjson; }
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
        UnityEditor.EditorGUILayout.LabelField("name", GUILayout.Width(100));
        name = UnityEditor.EditorGUILayout.TextField(name, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("desc", GUILayout.Width(100));
        desc = UnityEditor.EditorGUILayout.TextField(desc, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("blackboard_id", GUILayout.Width(100));
        blackboardId = UnityEditor.EditorGUILayout.TextField(blackboardId, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("root", GUILayout.Width(100));
        {
            var __list0 = ai.ComposeNode.Types.Select(t => new GUIContent(t)).ToArray();
            UnityEditor.EditorGUILayout.BeginVertical("Box");
            if (root == null)
            {
                root = new ai.Sequence();
                root.TypeIndex = 0;
            }
            UnityEditor.EditorGUILayout.BeginHorizontal();
            UnityEditor.EditorGUILayout.LabelField("类型", GUILayout.Width(100));
            root.TypeIndex = UnityEditor.EditorGUILayout.Popup(root.TypeIndex, __list0, GUILayout.Width(200));
            UnityEditor.EditorGUILayout.EndHorizontal();
            root.Instance.Render();
            UnityEditor.EditorGUILayout.EndVertical();
        }
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.EndVertical();
    }

    public static BehaviorTree LoadJsonBehaviorTree(SimpleJSON.JSONNode _json)
    {
        BehaviorTree obj = new ai.BehaviorTree();
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonBehaviorTree(BehaviorTree _obj, SimpleJSON.JSONNode _json)
    {
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public int id;
    public UnityEngine.Object id_UnityObject;
    public string name;
    public UnityEngine.Object name_UnityObject;
    public string desc;
    public UnityEngine.Object desc_UnityObject;
    public string blackboardId;
    public UnityEngine.Object blackboardId_UnityObject;
    public ai.ComposeNode root;
    public UnityEngine.Object root_UnityObject;

    public override string ToString()
    {
        return "{ "
        + "id:" + id + ","
        + "name:" + name + ","
        + "desc:" + desc + ","
        + "blackboardId:" + blackboardId + ","
        + "root:" + root + ","
        + "}";
    }
}

}

