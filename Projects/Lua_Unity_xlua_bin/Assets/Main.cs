using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;

public class Main : MonoBehaviour
{
    // Start is called before the first frame update
    private LuaEnv _lua;

    public void Start()
    {
        _lua = new LuaEnv();

        _lua.AddLoader(this.Loader);

        _lua.DoString("(require 'Main').Start()");

    }

    public void Stop()
    {
        _lua.Dispose();
    }

    private byte[] Loader(ref string luaModule)
    {
        return System.IO.File.ReadAllBytes(Application.dataPath + "/Lua/" + luaModule.Replace('.', '/') + ".lua");
    }
}
