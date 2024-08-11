using UnityEditor;
using SimpleJSON;
using UnityEngine;
using System.Collections.Generic;
using editor.cfg.item;
using editor.cfg.test;

namespace GameEditor.ConfigEditor
{
    public class ConfigEditorTool : EditorWindow
    {
        private enum Tab
        {
            None,
            Item,
            FullType,
        }

        [MenuItem("测试/测试2")]
        public static void Test2()
        {
            var window = GetWindow<ConfigEditorTool>();
            window.Show();
        }

        private const string _jsonConfigDirPath = "../GenerateDatas/json";
        private Tab _currentTab = Tab.None;
        private Dictionary<Tab, IConfigEditorTable> _loadedDatas = new Dictionary<Tab, IConfigEditorTable>();

        private void SaveAll()
        {
            foreach (var data in _loadedDatas)
            {
                data.Value.Save();
            }
        }

        private IConfigEditorTable CreateTable()
        {
            switch (_currentTab)
            {
                case Tab.Item:
                    return new ConfigEditorTable<editor.cfg.item.Item>($"{_jsonConfigDirPath}/item_tbitem.json", _currentTab.ToString(), data => data.id.ToString());
                case Tab.FullType:
                    return new ConfigEditorTable<DemoType2>($"{_jsonConfigDirPath}/test_tbfulltypes.json", _currentTab.ToString(), data => data.x4.ToString());
                default:
                    return null;
            }
        }

        private void OnGUI()
        {
            DrawTopBar();
            DrawTable();
        }

        private void DrawTopBar()
        {
            GUILayout.BeginHorizontal();
            _currentTab = (Tab)EditorGUILayout.EnumPopup(_currentTab, GUILayout.Width(100));
            if (GUILayout.Button("保存", GUILayout.Width(100)))
            {
                SaveAll();
            }
            GUILayout.EndHorizontal();
        }

        private void DrawTable()
        {
            if (_currentTab == Tab.None)
            {
                return;
            }
            if (!_loadedDatas.TryGetValue(_currentTab, out var table))
            {
                table = CreateTable();
                _loadedDatas.Add(_currentTab, table);
            }
            table?.OnGUI();
        }
    }
}