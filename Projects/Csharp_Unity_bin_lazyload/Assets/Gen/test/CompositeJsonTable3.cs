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

public sealed partial class CompositeJsonTable3 :  Bright.Config.BeanBase 
{
    public CompositeJsonTable3(ByteBuf _buf) 
    {
        A = _buf.ReadInt();
        B = _buf.ReadInt();
        PostInit();
    }

    public static CompositeJsonTable3 DeserializeCompositeJsonTable3(ByteBuf _buf)
    {
        return new test.CompositeJsonTable3(_buf);
    }

    public int A { get; private set; }
    public int B { get; private set; }

    public const int __ID__ = 1566207896;
    public override int GetTypeId() => __ID__;
    public override string ToString()
    {
        return "{ "
        + "A:" + A + ","
        + "B:" + B + ","
        + "}";
    }
    
    partial void PostInit();
}

}
