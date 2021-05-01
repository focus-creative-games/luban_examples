using Puerts;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Main : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        var env = new JsEnv(new JsLoader(UnityEngine.Application.dataPath + "/../TsScripts/output"));
        env.Eval("const Main = require('./Main');");
    }

    // Update is called once per frame
    void Update()
    {

    }
}
