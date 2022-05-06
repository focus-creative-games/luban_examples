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
        var tablesCtor = typeof(cfg.Tables).GetConstructors()[0];
        var loaderReturnType = tablesCtor.GetParameters()[0].ParameterType.GetGenericArguments()[1];
        // 根据cfg.Tables的构造函数的Loader的返回值类型决定使用json还是ByteBuf Loader
        System.Delegate loader = loaderReturnType == typeof(ByteBuf) ?
            new System.Func<string, ByteBuf>(LoadByteBuf)
            : (System.Delegate)new System.Func<string, JSONNode>(LoadJson);
        var tables = (cfg.Tables)tablesCtor.Invoke(new object[] {loader});

        UnityEngine.Debug.LogFormat("item[1].name:{0}", tables.TbItem[1].Name);
        Debug.LogFormat("bag init capacity:{0}", tables.TbGlobalConfig.BagInitCapacity);

        //tables.TranslateText((key, text) => text + "# translate");

        Dictionary<(int, int), string> m = new Dictionary<(int, int), string>();

        m.Add((1, 2), "xxx");

        UnityEngine.Debug.Log("== load succ==");
    }

    private static JSONNode LoadJson(string file)
    {
        return JSON.Parse(File.ReadAllText($"{Application.dataPath}/../../GenerateDatas/json/{file}.json", System.Text.Encoding.UTF8));
    }

    private static ByteBuf LoadByteBuf(string file)
    {
        return new ByteBuf(File.ReadAllBytes($"{Application.dataPath}/../../GenerateDatas/bytes/{file}.bytes"));
    }

    // Update is called once per frame
    void Update()
    {

    }
}
