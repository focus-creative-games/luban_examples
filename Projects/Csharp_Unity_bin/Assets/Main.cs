using System.Collections;
using System.Collections.Generic;
using System.IO;
using Luban;
using UnityEngine;

public class Main : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        var tables = new cfg.Tables(LoadByteBuf);
        var item = tables.TbItem.DataList[1];
        UnityEngine.Debug.LogFormat("item[1]:{0}", item);

        var refv = tables.TbTestRef.DataList[0].X1_Ref;
        Debug.LogFormat("refv:{0}", refv);

        UnityEngine.Debug.Log("== load succ==");
    }

    private static ByteBuf LoadByteBuf(string file)
    {
        return new ByteBuf(File.ReadAllBytes($"{Application.dataPath}/../../GenerateDatas/bytes/{file}.bytes"));
    }
}
