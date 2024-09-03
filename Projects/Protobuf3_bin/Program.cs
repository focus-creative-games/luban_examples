
using Google.Protobuf;

class Program
{

    public static void Main(string[] args)
    {
        TestFullTypes();

        TestNullable();
    }

    private static void TestNullable()
    {
        var file = "../../../pb_datas/test_tbtestnull.bytes";

        var bytes = File.ReadAllBytes(file);
        //Console.WriteLine(string.Join(',', bytes.Select(b => b.ToString())));
        var tbTestNull = Cfg.TestTbTestNull.Parser.ParseFrom(File.OpenRead(file));

        Console.WriteLine(tbTestNull);
    }

    private static void TestFullTypes()
    {
        //var bytes = File.ReadAllBytes("../../../pb_datas/item_tbitem.pb");

        //Console.WriteLine(string.Join(',', bytes.Select(b => b.ToString())));
        //var tbItem = Cfg.ItemTbItem.Parser.ParseFrom(File.OpenRead("../../../pb_datas/item_tbitem.pb"));

        //Console.WriteLine(tbItem);

        var file = "../../../pb_datas/test_tbfulltypes.bytes";

        var bytes = File.ReadAllBytes(file);

        //var ft = new Cfg.TestDemoType2();
        //ft.X4 = 1;
        //ft.X14 = new Cfg.TestDemoDynamic();
        //ft.X14.DemoD2 = new Cfg.TestDemoD2()
        //{
        //    X1 = 1,
        //    X2 = 2
        //};


        //var mm = new MemoryStream();
        //var cos = new CodedOutputStream(mm);

        //ft.WriteTo(cos);
        //cos.Flush();

        //mm.Seek(0, SeekOrigin.Begin);

        //var b2 = new byte[mm.Length];
        //mm.Read(b2, 0, (int)mm.Length);

        //Console.WriteLine(string.Join(',', b2.Select(b => b.ToString())));

        //Console.WriteLine(string.Join(',', bytes.Select(b => b.ToString())));
        var tbFullTypes = Cfg.TestTbFullTypes.Parser.ParseFrom(File.OpenRead(file));

        Console.WriteLine(tbFullTypes);
    }
}




