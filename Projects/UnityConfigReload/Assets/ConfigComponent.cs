using System.Collections;
using System.Collections.Generic;
using System.IO;
using Bright.Serialization;
using UnityEngine;

public class ConfigComponent
{
    public static ConfigComponent Instance;

    public cfg.Tables Tables;

    public cfg.item.Item item1;
    
    public cfg.item.Item item2;

    
    public void LoadConfig()
    {
        Tables = new cfg.Tables(LoadByteBuf);
        item1 = Tables.TbItem[1];
        item2 = Tables.TbItem[2];
        UnityEngine.Debug.LogFormat("item[1].name:{0}", item1.Name);
        UnityEngine.Debug.LogFormat("item[2].name:{0}", item2.Name);
        UnityEngine.Debug.LogFormat("UnlockEquip:{0}", Tables.TbTestGlobal.UnlockEquip.ToString());
        Debug.LogFormat("bag init capacity:{0}", Tables.TbGlobalConfig.BagInitCapacity);
        UnityEngine.Debug.Log("== load succ==");
    }
    
    private static ByteBuf LoadByteBuf(string file)
    {
        return new ByteBuf(File.ReadAllBytes($"Assets/Gen/Data/{file.ToLower().Replace('.','_')}.bytes"));
    }
}
