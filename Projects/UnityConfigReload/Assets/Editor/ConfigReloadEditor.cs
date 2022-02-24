using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public class ConfigReloadEditor : Editor
{
    [MenuItem("Tools/Reload")]
    public static void Reload()
    {
        ConfigComponent.Instance.Tables.Reload("item.TbItem");
        Debug.Log(ConfigComponent.Instance.item.Name);
    }
}
