using System.Collections;
using System.Collections.Generic;
using System.IO;
using Bright.Serialization;
using UnityEngine;

public class Main : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        var tables = new cfg.Tables(LoadByteBuf);
        UnityEngine.Debug.LogFormat("item[1].name:{0}", tables.TbItem[1].Name);
        Debug.LogFormat("bag init capacity:{0}", tables.TbGlobalConfig.BagInitCapacity);

        UnityEngine.Debug.Log("== load succ==");
    }

    private static ByteBuf LoadByteBuf(string file)
    {
        return new ByteBuf(File.ReadAllBytes($"{Application.dataPath}/../../GenerateDatas/bytes/{file}.bytes"));
    }
}
