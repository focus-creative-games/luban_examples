
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

namespace editor.cfg
{

public sealed class vec4 :  Luban.EditorBeanBase 
{
    public vec4()
    {
    }

    public override void LoadJson(SimpleJSON.JSONObject _json)
    {
        { 
            var _fieldJson = _json["x"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  x = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["y"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  y = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["z"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  z = _fieldJson;
            }
        }
        
        { 
            var _fieldJson = _json["w"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsNumber) { throw new SerializationException(); }  w = _fieldJson;
            }
        }
        
    }

    public override void SaveJson(SimpleJSON.JSONObject _json)
    {
        {
            _json["x"] = new JSONNumber(x);
        }
        {
            _json["y"] = new JSONNumber(y);
        }
        {
            _json["z"] = new JSONNumber(z);
        }
        {
            _json["w"] = new JSONNumber(w);
        }
    }


    public override void Render()
    {
        UnityEditor.EditorGUILayout.BeginVertical();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("x", GUILayout.Width(100));
        x = UnityEditor.EditorGUILayout.FloatField(x, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("y", GUILayout.Width(100));
        y = UnityEditor.EditorGUILayout.FloatField(y, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("z", GUILayout.Width(100));
        z = UnityEditor.EditorGUILayout.FloatField(z, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("w", GUILayout.Width(100));
        w = UnityEditor.EditorGUILayout.FloatField(w, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.EndVertical();
    }

    public static vec4 LoadJsonvec4(SimpleJSON.JSONNode _json)
    {
        vec4 obj = new vec4();
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonvec4(vec4 _obj, SimpleJSON.JSONNode _json)
    {
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public float x;
    public UnityEngine.Object x_UnityObject;
    public float y;
    public UnityEngine.Object y_UnityObject;
    public float z;
    public UnityEngine.Object z_UnityObject;
    public float w;
    public UnityEngine.Object w_UnityObject;

    public override string ToString()
    {
        return "{ "
        + "x:" + x + ","
        + "y:" + y + ","
        + "z:" + z + ","
        + "w:" + w + ","
        + "}";
    }
}

}

