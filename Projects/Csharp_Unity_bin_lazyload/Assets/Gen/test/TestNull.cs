//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;



namespace cfg.test
{

public sealed partial class TestNull :  Bright.Config.BeanBase 
{
    public TestNull(ByteBuf _buf) 
    {
        Id = _buf.ReadInt();
        if(_buf.ReadBool()){ X1 = _buf.ReadInt(); } else { X1 = null; }
        if(_buf.ReadBool()){ X2 = (test.DemoEnum)_buf.ReadInt(); } else { X2 = null; }
        if(_buf.ReadBool()){ X3 = test.DemoType1.DeserializeDemoType1(_buf); } else { X3 = null; }
        if(_buf.ReadBool()){ X4 = test.DemoDynamic.DeserializeDemoDynamic(_buf); } else { X4 = null; }
        if(_buf.ReadBool()){ S1 = _buf.ReadString(); } else { S1 = null; }
        if(_buf.ReadBool()){ S2_l10n_key = _buf.ReadString(); S2 = _buf.ReadString(); } else { S2 = null; }
        PostInit();
    }

    public static TestNull DeserializeTestNull(ByteBuf _buf)
    {
        return new test.TestNull(_buf);
    }

    public int Id { get; private set; }
    public int? X1 { get; private set; }
    public test.DemoEnum? X2 { get; private set; }
    public test.DemoType1 X3 { get; private set; }
    public test.DemoDynamic X4 { get; private set; }
    public string S1 { get; private set; }
    public string S2 { get; private set; }
    public string S2_l10n_key { get; }

    public const int __ID__ = 339868469;
    public override int GetTypeId() => __ID__;
    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "X1:" + X1 + ","
        + "X2:" + X2 + ","
        + "X3:" + X3 + ","
        + "X4:" + X4 + ","
        + "S1:" + S1 + ","
        + "S2:" + S2 + ","
        + "}";
    }
    
    partial void PostInit();
}

}
