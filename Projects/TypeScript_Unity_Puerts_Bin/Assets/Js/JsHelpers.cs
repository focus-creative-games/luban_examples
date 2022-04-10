using Bright.Serialization;
using Puerts;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


public class JsHelpers
{
    public static ByteBuf LoadFromFile(string baseDir, string file)
    {
        return new ByteBuf(File.ReadAllBytes(Path.Combine(baseDir, file)));
    }

    public static string ReadAllText(string baseDir, string file)
    {
        return File.ReadAllText(Path.Combine(baseDir, file), Encoding.UTF8);
    }
}

