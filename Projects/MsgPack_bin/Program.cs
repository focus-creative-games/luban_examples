

class Program
{


    public static void Main(string[] args)
    {
        // See https://aka.ms/new-console-template for more information
        Console.WriteLine("Hello, World!");

        // ==========
        // 使用 LsMsgPack 可视化工具检查无误

        //TestFullTypes();

        //TestNullable();
    }

    //private static void TestNullable()
    //{
    //    var file = "../../../pb_datas/test_tbtestnull.bytes";

    //    var bytes = File.ReadAllBytes(file);
    //    Console.WriteLine(string.Join(',', bytes.Select(b => b.ToString())));
    //    var tbTestNull = Cfg.TestTbTestNull.Parser.ParseFrom(File.OpenRead(file));

    //    Console.WriteLine(tbTestNull);
    //}

    private static void TestFullTypes()
    {
        //var bytes = File.ReadAllBytes("../../../pb_datas/item_tbitem.pb");

        //Console.WriteLine(string.Join(',', bytes.Select(b => b.ToString())));
        //var tbItem = Cfg.ItemTbItem.Parser.ParseFrom(File.OpenRead("../../../pb_datas/item_tbitem.pb"));

        //Console.WriteLine(tbItem);

        //var file = "../../../msgpack_datas/test_tbfulltypes.bytes";

        //var bytes = File.ReadAllBytes(file);

        //Console.WriteLine(string.Join(',', bytes.Select(b => b.ToString())));

        //Console.WriteLine();
    }
}




