using System.Collections;
using System.Collections.Generic;
using System.IO;
using Bright.Serialization;
using UnityEngine;
using SimpleJSON;

public class Main : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        var tables = new cfg.Tables(LoadByteBuf);
        UnityEngine.Debug.LogFormat("item[1].name:{0}", tables.TbItem[1].Name);
        Debug.LogFormat("bag init capacity:{0}", tables.TbGlobalConfig.BagInitCapacity);

        //tables.TranslateText((key, text) => text + "# translate");

        Dictionary<(int, int), string> m = new Dictionary<(int, int), string>();

        m.Add((1, 2), "xxx");

        UnityEngine.Debug.Log("== load succ==");
    }

    private static JSONNode LoadByteBuf(string file)
    {
        return JSON.Parse(File.ReadAllText(Application.dataPath + "/../../GenerateDatas/json/" + file + ".json", System.Text.Encoding.UTF8));
    }

    // Update is called once per frame
    void Update()
    {

    }
}
