
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Luban;
using Newtonsoft.Json.Linq;



namespace cfg.test
{

public sealed partial class DemoExplicitType : Luban.BeanBase
{
    public DemoExplicitType(JToken _buf) 
    {
        JObject _obj = _buf as JObject;
        X1 = (byte)_obj.GetValue("x1");
        X2 = (short)_obj.GetValue("x2");
        X3 = (int)_obj.GetValue("x3");
        X4 = (long)_obj.GetValue("x4");
        X5 = (float)_obj.GetValue("x5");
        X6 = (double)_obj.GetValue("x6");
        X7 = (long)_obj.GetValue("x7");
    }

    public static DemoExplicitType DeserializeDemoExplicitType(JToken _buf)
    {
        return new test.DemoExplicitType(_buf);
    }

    public readonly byte X1;
    public readonly short X2;
    public readonly int X3;
    public readonly long X4;
    public readonly float X5;
    public readonly double X6;
    public readonly long X7;


    public const int __ID__ = 370351885;
    public override int GetTypeId() => __ID__;

    public  void ResolveRef(Tables tables)
    {
    }

    public override string ToString()
    {
        return "{ "
        + "x1:" + X1 + ","
        + "x2:" + X2 + ","
        + "x3:" + X3 + ","
        + "x4:" + X4 + ","
        + "x5:" + X5 + ","
        + "x6:" + X6 + ","
        + "x7:" + X7 + ","
        + "}";
    }
}
}

