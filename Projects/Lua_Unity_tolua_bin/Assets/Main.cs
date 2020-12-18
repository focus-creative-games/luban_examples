using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using LuaInterface;

public class Main : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        LuaState lua = new LuaState();
        lua.Start();
		LuaBinder.Bind(lua);
        string hello =
            @"                
                (require 'TestGen').Start()
            ";
        
        lua.DoString(hello, "Main.cs");
        lua.CheckTop();
        lua.Dispose();
        lua = null;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
