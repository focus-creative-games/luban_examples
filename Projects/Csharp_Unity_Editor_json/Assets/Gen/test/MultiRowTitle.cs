
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

namespace editor.cfg.test
{

public sealed class MultiRowTitle :  Luban.EditorBeanBase 
{
    public MultiRowTitle()
    {
            name = "";
            x1 = new test.H1();
            x2 = new System.Collections.Generic.List<test.H2>();
            x3 = System.Array.Empty<test.H2>();
            x4 = System.Array.Empty<test.H2>();
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
            var _fieldJson = _json["x1"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsObject) { throw new SerializationException(); }  x1 = test.H1.LoadJsonH1(_fieldJson);
            }
        }
        
        { 
            var _fieldJson = _json["x2_0"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsObject) { throw new SerializationException(); }  x20 = test.H2.LoadJsonH2(_fieldJson);
            }
        }
        
        { 
            var _fieldJson = _json["x2"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } x2 = new System.Collections.Generic.List<test.H2>(); foreach(SimpleJSON.JSONNode __e0 in _fieldJson.Children) { test.H2 __v0;  if(!__e0.IsObject) { throw new SerializationException(); }  __v0 = test.H2.LoadJsonH2(__e0);  x2.Add(__v0); }  
            }
        }
        
        { 
            var _fieldJson = _json["x3"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } int __n0 = _fieldJson.Count; x3 = new test.H2[__n0]; int __i0=0; foreach(SimpleJSON.JSONNode __e0 in _fieldJson.Children) { test.H2 __v0;  if(!__e0.IsObject) { throw new SerializationException(); }  __v0 = test.H2.LoadJsonH2(__e0);  x3[__i0++] = __v0; }  
            }
        }
        
        { 
            var _fieldJson = _json["x4"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } int __n0 = _fieldJson.Count; x4 = new test.H2[__n0]; int __i0=0; foreach(SimpleJSON.JSONNode __e0 in _fieldJson.Children) { test.H2 __v0;  if(!__e0.IsObject) { throw new SerializationException(); }  __v0 = test.H2.LoadJsonH2(__e0);  x4[__i0++] = __v0; }  
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

            if (x1 == null) { throw new System.ArgumentNullException(); }
            { var __bjson = new JSONObject();  test.H1.SaveJsonH1(x1, __bjson); _json["x1"] = __bjson; }
        }

        if (x20 != null)
        {
            { var __bjson = new JSONObject();  test.H2.SaveJsonH2(x20, __bjson); _json["x2_0"] = __bjson; }
        }
        {

            if (x2 == null) { throw new System.ArgumentNullException(); }
            { var __cjson0 = new JSONArray(); foreach(var __e0 in x2) { { var __bjson = new JSONObject();  test.H2.SaveJsonH2(__e0, __bjson); __cjson0["null"] = __bjson; } } _json["x2"] = __cjson0; }
        }
        {

            if (x3 == null) { throw new System.ArgumentNullException(); }
            { var __cjson0 = new JSONArray(); foreach(var __e0 in x3) { { var __bjson = new JSONObject();  test.H2.SaveJsonH2(__e0, __bjson); __cjson0["null"] = __bjson; } } _json["x3"] = __cjson0; }
        }
        {

            if (x4 == null) { throw new System.ArgumentNullException(); }
            { var __cjson0 = new JSONArray(); foreach(var __e0 in x4) { { var __bjson = new JSONObject();  test.H2.SaveJsonH2(__e0, __bjson); __cjson0["null"] = __bjson; } } _json["x4"] = __cjson0; }
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
        UnityEditor.EditorGUILayout.LabelField("x1", GUILayout.Width(100));
        {
            UnityEditor.EditorGUILayout.BeginVertical("Box");UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("y2");
        {
            UnityEditor.EditorGUILayout.BeginVertical("Box");UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("z2");
        x1.y2.z2 = UnityEditor.EditorGUILayout.IntField(x1.y2.z2, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("z3");
        x1.y2.z3 = UnityEditor.EditorGUILayout.IntField(x1.y2.z3, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();    UnityEditor.EditorGUILayout.EndVertical();
        }
        UnityEditor.EditorGUILayout.EndHorizontal();UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("y3");
        x1.y3 = UnityEditor.EditorGUILayout.IntField(x1.y3, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();    UnityEditor.EditorGUILayout.EndVertical();
        }
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("x2_0", GUILayout.Width(100));
        {
            UnityEditor.EditorGUILayout.BeginVertical("Box");UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("z2");
        x20.z2 = UnityEditor.EditorGUILayout.IntField(x20.z2, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("z3");
        x20.z3 = UnityEditor.EditorGUILayout.IntField(x20.z3, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();    UnityEditor.EditorGUILayout.EndVertical();
        }
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("x2", GUILayout.Width(100));
        {
            UnityEditor.EditorGUILayout.BeginVertical("Box");
            int __n0 = x2.Count;
            for (int __i0 = 0; __i0 < __n0; __i0++)
            {
                UnityEditor.EditorGUILayout.BeginHorizontal();
                if (GUILayout.Button("-", GUILayout.Width(20)))
                {
                    x2.RemoveAt(__i0);
                    UnityEditor.EditorGUILayout.EndHorizontal();
                    break;
                }
                UnityEditor.EditorGUILayout.LabelField(__i0.ToString(), GUILayout.Width(20));
                test.H2 __e0 = x2[__i0];
                {
            UnityEditor.EditorGUILayout.BeginVertical("Box");UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("z2");
        __e0.z2 = UnityEditor.EditorGUILayout.IntField(__e0.z2, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("z3");
        __e0.z3 = UnityEditor.EditorGUILayout.IntField(__e0.z3, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();    UnityEditor.EditorGUILayout.EndVertical();
        };
                x2[__i0] = __e0;
                UnityEditor.EditorGUILayout.EndHorizontal();
            }
            if (GUILayout.Button("+", GUILayout.Width(20)))
            {
                x2.Add(new test.H2());
            }
            UnityEditor.EditorGUILayout.EndVertical();
        }
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("x3", GUILayout.Width(100));
        {
            UnityEditor.EditorGUILayout.BeginVertical("Box");
            int __n0 = x3.Length;
            for (int __i0 = 0; __i0 < __n0; __i0++)
            {
                UnityEditor.EditorGUILayout.BeginHorizontal();
                if (GUILayout.Button("-", GUILayout.Width(20)))
                {
                    var __list0 = new System.Collections.Generic.List<test.H2>(x3);
                    __list0.RemoveAt(__i0);
                    x3 = __list0.ToArray();
                    UnityEditor.EditorGUILayout.EndHorizontal();
                    break;
                }
                UnityEditor.EditorGUILayout.LabelField(__i0.ToString(), GUILayout.Width(20));
                test.H2 __e0 = x3[__i0];
                {
            UnityEditor.EditorGUILayout.BeginVertical("Box");UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("z2");
        __e0.z2 = UnityEditor.EditorGUILayout.IntField(__e0.z2, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("z3");
        __e0.z3 = UnityEditor.EditorGUILayout.IntField(__e0.z3, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();    UnityEditor.EditorGUILayout.EndVertical();
        };
                x3[__i0] = __e0;
                UnityEditor.EditorGUILayout.EndHorizontal();
            }
            if (GUILayout.Button("+", GUILayout.Width(20)))
            {
                var __list0 = new System.Collections.Generic.List<test.H2>(x3);
                __list0.Add(new test.H2());
                x3 = __list0.ToArray();
            }
            UnityEditor.EditorGUILayout.EndVertical();
        }
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("x4", GUILayout.Width(100));
        {
            UnityEditor.EditorGUILayout.BeginVertical("Box");
            int __n0 = x4.Length;
            for (int __i0 = 0; __i0 < __n0; __i0++)
            {
                UnityEditor.EditorGUILayout.BeginHorizontal();
                if (GUILayout.Button("-", GUILayout.Width(20)))
                {
                    var __list0 = new System.Collections.Generic.List<test.H2>(x4);
                    __list0.RemoveAt(__i0);
                    x4 = __list0.ToArray();
                    UnityEditor.EditorGUILayout.EndHorizontal();
                    break;
                }
                UnityEditor.EditorGUILayout.LabelField(__i0.ToString(), GUILayout.Width(20));
                test.H2 __e0 = x4[__i0];
                {
            UnityEditor.EditorGUILayout.BeginVertical("Box");UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("z2");
        __e0.z2 = UnityEditor.EditorGUILayout.IntField(__e0.z2, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();UnityEditor.EditorGUILayout.BeginHorizontal();
        UnityEditor.EditorGUILayout.LabelField("z3");
        __e0.z3 = UnityEditor.EditorGUILayout.IntField(__e0.z3, GUILayout.Width(150));
        UnityEditor.EditorGUILayout.EndHorizontal();    UnityEditor.EditorGUILayout.EndVertical();
        };
                x4[__i0] = __e0;
                UnityEditor.EditorGUILayout.EndHorizontal();
            }
            if (GUILayout.Button("+", GUILayout.Width(20)))
            {
                var __list0 = new System.Collections.Generic.List<test.H2>(x4);
                __list0.Add(new test.H2());
                x4 = __list0.ToArray();
            }
            UnityEditor.EditorGUILayout.EndVertical();
        }
        UnityEditor.EditorGUILayout.EndHorizontal();
        UnityEditor.EditorGUILayout.EndVertical();
    }

    public static MultiRowTitle LoadJsonMultiRowTitle(SimpleJSON.JSONNode _json)
    {
        MultiRowTitle obj = new test.MultiRowTitle();
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonMultiRowTitle(MultiRowTitle _obj, SimpleJSON.JSONNode _json)
    {
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public int id;
    public UnityEngine.Object id_UnityObject;
    public string name;
    public UnityEngine.Object name_UnityObject;
    public test.H1 x1;
    public UnityEngine.Object x1_UnityObject;
    public test.H2 x20;
    public UnityEngine.Object x20_UnityObject;
    public System.Collections.Generic.List<test.H2> x2;
    public UnityEngine.Object x2_UnityObject;
    public test.H2[] x3;
    public UnityEngine.Object x3_UnityObject;
    public test.H2[] x4;
    public UnityEngine.Object x4_UnityObject;

    public override string ToString()
    {
        return "{ "
        + "id:" + id + ","
        + "name:" + name + ","
        + "x1:" + x1 + ","
        + "x20:" + x20 + ","
        + "x2:" + Luban.StringUtil.CollectionToString(x2) + ","
        + "x3:" + Luban.StringUtil.CollectionToString(x3) + ","
        + "x4:" + Luban.StringUtil.CollectionToString(x4) + ","
        + "}";
    }
}

}

