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

public sealed partial class H2 :  Bright.Config.BeanBase 
{
    public H2(ByteBuf _buf) 
    {
        Z2 = _buf.ReadInt();
        Z3 = _buf.ReadInt();
        PostInit();
    }

    public static H2 DeserializeH2(ByteBuf _buf)
    {
        return new test.H2(_buf);
    }

    public int Z2 { get; private set; }
    public int Z3 { get; private set; }

    public const int __ID__ = -1422503994;
    public override int GetTypeId() => __ID__;
    public override string ToString()
    {
        return "{ "
        + "Z2:" + Z2 + ","
        + "Z3:" + Z3 + ","
        + "}";
    }
    
    partial void PostInit();
}

}
