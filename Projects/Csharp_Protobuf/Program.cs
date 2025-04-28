

#define USE_JSON

using Cfg;
using Google.Protobuf;


class Program
{
    public static void Main(string[] args)
    {

#if USE_JSON
        var tables = new Tables(LoadJson);
#else
        Tables tables = new Tables(Loader);
#endif
        Console.WriteLine(tables.TbItem.DataList[0]);

    }
    
    static byte[] Loader(string name)
    {
        var file = string.Format("../../../pb_datas/{0}.bytes", name);

        return File.ReadAllBytes(file);
    }

    static string LoadJson(string name)
    {
        var file = string.Format("../../../pb_datas/{0}.json", name);

        return File.ReadAllText(file);
    }
}




