using System.Collections;
using System.Collections.Generic;
using System.IO;
using Bright.Serialization;
using UnityEngine;

public class ConfigComponent
{
    public static ConfigComponent Instance;

    public cfg.Tables Tables;

    public cfg.item.Item item;
    public void LoadConfig()
    {
        Tables = new cfg.Tables(LoadByteBuf);
        item = Tables.TbItem[1];
        UnityEngine.Debug.LogFormat("item[1].name:{0}", item.Name);
        Debug.LogFormat("bag init capacity:{0}", Tables.TbGlobalConfig.BagInitCapacity);
        UnityEngine.Debug.Log("== load succ==");
    }
    
    private static ByteBuf LoadByteBuf(string file)
    {
        return new ByteBuf(File.ReadAllBytes($"Assets/Gen/Data/{file.ToLower().Replace('.','_')}.bytes"));
    }
}
