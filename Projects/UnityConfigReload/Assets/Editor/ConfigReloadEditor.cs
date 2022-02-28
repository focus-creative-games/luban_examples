using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public class ConfigReloadEditor : Editor
{
    [MenuItem("Tools/Reload")]
    public static void Reload()
    {
        ConfigComponent.Instance.Tables.ReloadAll();
        UnityEngine.Debug.LogFormat("item[1].name:{0}", ConfigComponent.Instance.item1.Name);
        UnityEngine.Debug.LogFormat("item[2].name:{0}", ConfigComponent.Instance.item2.Name);
        UnityEngine.Debug.LogFormat("UnlockEquip:{0}", ConfigComponent.Instance.Tables.TbTestGlobal.UnlockEquip.ToString());
        Debug.LogFormat("DefineFromExcel:{0}", ConfigComponent.Instance.DefineFromExcel.ToString());
    }
}
