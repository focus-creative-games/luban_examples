using Luban;
using SimpleJSON;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using UnityEditor;
using UnityEditorInternal;
using UnityEngine;

namespace GameEditor.ConfigEditor
{
    public interface IConfigEditorTable
    {
        string Id { get; set; }
        void Load();
        void Save();
        void OnGUI();
        void Sort();
    }
    public class ConfigEditorTable<T> : IConfigEditorTable where T : EditorBeanBase, new()
    {
        private List<T> _datas = new List<T>();
        private readonly string _jsonFilePath;
        private readonly string _name;
        private readonly Func<T, string> _idGetter;

        public string Id { get; set; }


        public ConfigEditorTable(string jsonFilePath, string name, Func<T, string> idGetter)
        {
            _jsonFilePath = jsonFilePath;
            _name = name;
            _idGetter = idGetter;
            Load();
        }

        public void Load()
        {
            _datas.Clear();

            if (File.Exists(_jsonFilePath))
            {
                var jsonText = File.ReadAllText(_jsonFilePath);
                var json = JSON.Parse(jsonText);
                if (json.IsArray)
                {
                    foreach (var node in json.AsArray)
                    {
                        var data = new T();
                        data.LoadJson((JSONObject)node);
                        _datas.Add(data);
                    }
                }
                else
                {
                    var data = new T();
                    data.LoadJson((JSONObject)json);
                    _datas.Add(data);
                }
            }
        }

        public void Save()
        {
            // 检查id有无空值
            for (int i = 0; i < _datas.Count; i++)
            {
                if (string.IsNullOrEmpty(GetId(_datas[i])))
                {
                    EditorUtility.DisplayDialog("提示", $"{_name}表第[{i}]个元素的id为空", "确定");
                    return;
                }
            }
            // 检查id有无重复
            var ids = new Dictionary<string, List<int>>();
            for (int i = 0; i < _datas.Count; i++)
            {
                var id = GetId(_datas[i]);
                if (!ids.ContainsKey(id))
                {
                    ids.Add(id, new List<int>());
                }
                ids[id].Add(i);
            }
            var repeatIds = ids.Where(pair => pair.Value.Count > 1).Select(pair => pair.Key).ToList();
            if (repeatIds.Count > 0)
            {
                var sb = new StringBuilder();
                foreach (var id in repeatIds)
                {
                    sb.Append($"{id}重复出现在{string.Join(", ", ids[id])}\n");
                }
                EditorUtility.DisplayDialog("提示", $"{_name}表id重复\n{sb}", "确定");
                return;
            }

            var jsonArray = new JSONArray();
            foreach (var data in _datas)
            {
                var json = new JSONObject();
                data.SaveJson(json);
                jsonArray.Add(json);
            }
            File.WriteAllText(_jsonFilePath, jsonArray.ToString(4));
        }


        private Vector2 _idScrollPos;
        private Vector2 _dataScrollPos;
        private int _selectIndex;
        public void OnGUI()
        {
            GUILayout.BeginHorizontal("Box");
            GUILayout.BeginVertical("Box");
            _idScrollPos = GUILayout.BeginScrollView(_idScrollPos, GUILayout.Width(200));
            for (int i = 0; i < _datas.Count; i++)
            {
                GUILayout.BeginHorizontal();
                if (_selectIndex == i)
                {
                    GUI.color = Color.cyan;
                }
                else
                {
                    GUI.color = Color.white;
                }
                EditorGUILayout.LabelField($"[{i}]", GUILayout.Width(20));
                if (GUILayout.Button(GetId(_datas[i])))
                {
                    _selectIndex = i;
                }
                GUI.color = Color.white;
                GUILayout.EndHorizontal();
            }

            // Unity原生风格化的+ -按钮
            GUILayout.BeginHorizontal();
            GUILayout.FlexibleSpace();
            if (GUILayout.Button("+", GUILayout.Width(20)))
            {
                _datas.Add(new T());
            }
            if (GUILayout.Button("-", GUILayout.Width(20)))
            {
                if (_selectIndex >= 0 && _selectIndex < _datas.Count)
                {
                    _datas.RemoveAt(_selectIndex);
                    if (_selectIndex >= _datas.Count)
                    {
                        _selectIndex = _datas.Count - 1;
                    }
                }
            }
            GUILayout.EndHorizontal();

            GUILayout.EndScrollView();
            GUILayout.EndVertical();
            GUILayout.BeginVertical("Box");
            _dataScrollPos = GUILayout.BeginScrollView(_dataScrollPos);
            SelectData?.Render();
            GUILayout.EndScrollView();
            GUILayout.EndVertical();
            GUILayout.EndHorizontal();
        }

        private string GetId(T data)
        {
            if (data == null)
            {
                return "";
            }
            return _idGetter(data);
        }

        public void Sort()
        {
            var temp = GetId(SelectData);
            _datas = _datas.OrderBy(data => Convert.ToInt64(GetId(data))).ToList();
            if (!string.IsNullOrEmpty(temp))
            {
                _selectIndex = _datas.FindIndex(data => GetId(data) == temp);
            }
        }

        private T SelectData
        {
            get
            {
                if (_selectIndex >= 0 && _selectIndex < _datas.Count)
                {
                    return _datas[_selectIndex];
                }
                return null;
            }
        }
    }
}