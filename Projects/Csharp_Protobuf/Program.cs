
using Cfg;
using Google.Protobuf;

class Program
{
    public static void Main(string[] args)
    {
        // See https://aka.ms/new-console-template for more information
        Console.WriteLine("Hello, World!");

        Tables tables = new Tables(Loader);

        Console.WriteLine(tables.TbItem.DataList[0].Name);

        //var tables1 = new Tables(LoadJson);

        //Console.WriteLine(tables1.TbItem.DataList[0].Name);
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




