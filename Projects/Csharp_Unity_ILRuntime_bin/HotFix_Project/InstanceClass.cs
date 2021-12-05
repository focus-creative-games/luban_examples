using System;
using System.Collections.Generic;
using System.IO;
using Bright.Serialization;
using UnityEngine;

namespace HotFix_Project
{
    public class InstanceClass
    {
        // static method
        public static void StaticFunTest()
        {
            var tables = new cfg.Tables(file => new ByteBuf(File.ReadAllBytes(Application.dataPath + "/../../GenerateDatas/bin/" + file + ".bytes")));
            UnityEngine.Debug.Log("== load succ ==");
        }
    }


}
