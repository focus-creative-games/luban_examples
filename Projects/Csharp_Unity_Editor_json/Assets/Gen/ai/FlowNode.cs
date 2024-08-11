
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

public abstract class FlowNode :  ai.Node 
{
    public FlowNode()
    {
            decorators = new System.Collections.Generic.List<ai.Decorator>();
            services = new System.Collections.Generic.List<ai.Service>();
    }
    public override string GetTypeStr() => TYPE_STR;
    private const string TYPE_STR = "ai.FlowNode";

    private int _typeIndex = -1;
    public new int TypeIndex
    {
        get => _typeIndex;
        set
        {
            if(_typeIndex == value)
            {
                return;
            }
            _typeIndex = value;
            Instance = Create(Types[value]);
        }
    }
    public new FlowNode Instance { get; set;}
    public new static List<string> Types = new List<string>()
    {
        "ai.Sequence",
        "ai.Selector",
        "ai.SimpleParallel",
        "ai.UeWait",
        "ai.UeWaitBlackboardTime",
        "ai.MoveToTarget",
        "ai.ChooseSkill",
        "ai.MoveToRandomLocation",
        "ai.MoveToLocation",
        "ai.DebugPrint",
    };

    public new static FlowNode Create(string type)
    {
        switch (type)
        {
            case "ai.Sequence":   
            case "Sequence":return new ai.Sequence();
            case "ai.Selector":   
            case "Selector":return new ai.Selector();
            case "ai.SimpleParallel":   
            case "SimpleParallel":return new ai.SimpleParallel();
            case "ai.UeWait":   
            case "UeWait":return new ai.UeWait();
            case "ai.UeWaitBlackboardTime":   
            case "UeWaitBlackboardTime":return new ai.UeWaitBlackboardTime();
            case "ai.MoveToTarget":   
            case "MoveToTarget":return new ai.MoveToTarget();
            case "ai.ChooseSkill":   
            case "ChooseSkill":return new ai.ChooseSkill();
            case "ai.MoveToRandomLocation":   
            case "MoveToRandomLocation":return new ai.MoveToRandomLocation();
            case "ai.MoveToLocation":   
            case "MoveToLocation":return new ai.MoveToLocation();
            case "ai.DebugPrint":   
            case "DebugPrint":return new ai.DebugPrint();
            default: return null;
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
        UnityEditor.EditorGUILayout.EndVertical();
    }

    public static FlowNode LoadJsonFlowNode(SimpleJSON.JSONNode _json)
    {
        string type = _json["$type"];
        FlowNode obj;
        switch (type)
        {
            case "ai.Sequence":   
            case "Sequence":obj = new ai.Sequence(); break;
            case "ai.Selector":   
            case "Selector":obj = new ai.Selector(); break;
            case "ai.SimpleParallel":   
            case "SimpleParallel":obj = new ai.SimpleParallel(); break;
            case "ai.UeWait":   
            case "UeWait":obj = new ai.UeWait(); break;
            case "ai.UeWaitBlackboardTime":   
            case "UeWaitBlackboardTime":obj = new ai.UeWaitBlackboardTime(); break;
            case "ai.MoveToTarget":   
            case "MoveToTarget":obj = new ai.MoveToTarget(); break;
            case "ai.ChooseSkill":   
            case "ChooseSkill":obj = new ai.ChooseSkill(); break;
            case "ai.MoveToRandomLocation":   
            case "MoveToRandomLocation":obj = new ai.MoveToRandomLocation(); break;
            case "ai.MoveToLocation":   
            case "MoveToLocation":obj = new ai.MoveToLocation(); break;
            case "ai.DebugPrint":   
            case "DebugPrint":obj = new ai.DebugPrint(); break;
            default: throw new SerializationException();
        }
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonFlowNode(FlowNode _obj, SimpleJSON.JSONNode _json)
    {
        _json["$type"] = _obj.GetTypeStr();
        _obj.Instance.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public System.Collections.Generic.List<ai.Decorator> decorators;
    public UnityEngine.Object decorators_UnityObject;
    public System.Collections.Generic.List<ai.Service> services;
    public UnityEngine.Object services_UnityObject;

    public override string ToString()
    {
        return "{ "
        + "id:" + id + ","
        + "nodeName:" + nodeName + ","
        + "decorators:" + Luban.StringUtil.CollectionToString(decorators) + ","
        + "services:" + Luban.StringUtil.CollectionToString(services) + ","
        + "}";
    }
}

}

