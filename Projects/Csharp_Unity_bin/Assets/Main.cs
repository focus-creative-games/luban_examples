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
        new cfg.Tables(LoadByteBuf);
        UnityEngine.Debug.Log("== load succ==");
    }

    private static ByteBuf LoadByteBuf(string file)
    {
        return new ByteBuf(File.ReadAllBytes(Application.dataPath + "/../config_data/" + file + ".bin"));
    }

    // Update is called once per frame
    void Update()
    {

    }
}
