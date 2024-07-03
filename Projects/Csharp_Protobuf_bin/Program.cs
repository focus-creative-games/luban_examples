
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

        Console.WriteLine(tables.Get<Item>(10000).Name);

        Console.WriteLine(tables.Get<CollisionConfig>().WorldSize);
    }
    static byte[] Loader(string name)
    {
        var file = string.Format("../../../pb_datas/{0}.bytes", name);

        var bytes = File.ReadAllBytes(file);

        return bytes;
    }
}




