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

public sealed partial class TestRow :  Bright.Config.BeanBase 
{
    public TestRow(ByteBuf _buf) 
    {
        X = _buf.ReadInt();
        Y = _buf.ReadBool();
        Z = _buf.ReadString();
        A = test.Test3.DeserializeTest3(_buf);
        {int n0 = System.Math.Min(_buf.ReadSize(), _buf.Size);B = new System.Collections.Generic.List<int>(n0);for(var i0 = 0 ; i0 < n0 ; i0++) { int _e0;  _e0 = _buf.ReadInt(); B.Add(_e0);}}
        PostInit();
    }

    public static TestRow DeserializeTestRow(ByteBuf _buf)
    {
        return new test.TestRow(_buf);
    }

    public int X { get; private set; }
    public bool Y { get; private set; }
    public string Z { get; private set; }
    public test.Test3 A { get; private set; }
    public System.Collections.Generic.List<int> B { get; private set; }

    public const int __ID__ = -543222164;
    public override int GetTypeId() => __ID__;
    public override string ToString()
    {
        return "{ "
        + "X:" + X + ","
        + "Y:" + Y + ","
        + "Z:" + Z + ","
        + "A:" + A + ","
        + "B:" + Bright.Common.StringUtil.CollectionToString(B) + ","
        + "}";
    }
    
    partial void PostInit();
}

}
