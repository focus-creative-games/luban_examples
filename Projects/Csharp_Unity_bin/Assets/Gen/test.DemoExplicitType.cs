
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Luban;


namespace cfg.test
{
public sealed partial class DemoExplicitType : Luban.BeanBase
{
    public DemoExplicitType(ByteBuf _buf) 
    {
        X1 = _buf.ReadByte();
        X2 = _buf.ReadShort();
        X3 = _buf.ReadInt();
        X4 = _buf.ReadLong();
        X5 = _buf.ReadFloat();
        X6 = _buf.ReadDouble();
        X7 = _buf.ReadLong();
    }

    public static DemoExplicitType DeserializeDemoExplicitType(ByteBuf _buf)
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

