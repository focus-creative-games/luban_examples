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
        var tables = new cfg.Tables(LoadIdxByteBuf, LoadDataByteBuf);


        Debug.Log(tables.TbGlobalConfig.DamageParamD);
        Debug.Log(tables.TbMultiUnionIndexList.Get(1, 1, "ab1").Desc);
        Debug.Log(tables.TbNotIndexList.Get(2).X);
        Debug.Log(tables.TbItem.Get(2).Name);
        var idxes = tables.TbMultiIndexList.Indexes_id3;
        Debug.Log(tables.TbMultiIndexList.GetById3(idxes[0]));
        Debug.Log(tables.TbGlobalConfig.BagInitItemsDropId_Ref.Desc);
    }

    private static ByteBuf LoadIdxByteBuf(string file)
    {
        return new ByteBuf(File.ReadAllBytes($"{Application.dataPath}/../../GenerateDatas/bidx/{file}.bytes"));
    }
    private static ByteBuf LoadDataByteBuf(string file)
    {
        return new ByteBuf(File.ReadAllBytes($"{Application.dataPath}/../../GenerateDatas/bytes/{file}.bytes"));
    }
}
