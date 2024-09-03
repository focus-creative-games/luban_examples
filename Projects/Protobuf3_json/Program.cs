
using Cfg;
using Google.Protobuf;
using System.Text;

class Program
{
    public static void Main(string[] args)
    {
        TestFullTypes();

        TestNullable();
    }

    private static void TestNullable()
    {
        var file = "../../../pb_datas/test_tbtestnull.json";

        var jsonText = File.ReadAllText(file, Encoding.UTF8);
        var tbTestNull = TestTbTestNull.Parser.ParseJson(jsonText);

        Console.WriteLine(tbTestNull);
    }

    private static void TestFullTypes()
    {
        var file = "../../../pb_datas/test_tbfulltypes.json";

        var jsonText = File.ReadAllText(file, Encoding.UTF8);
        var tbFullTypes = TestTbFullTypes.Parser.ParseJson(jsonText);

        Console.WriteLine(tbFullTypes);
    }
}




