
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

public sealed partial class InnerGroup :  Bright.Config.BeanBase 
{
    public InnerGroup(ByteBuf _buf) 
    {
        Y1 = _buf.ReadInt();
        Y2 = _buf.ReadInt();
        Y3 = _buf.ReadInt();
        Y4 = _buf.ReadInt();
    }

    public static InnerGroup DeserializeInnerGroup(ByteBuf _buf)
    {
        return new test.InnerGroup(_buf);
    }

    public int Y1 { get; private set; }
    public int Y2 { get; private set; }
    public int Y3 { get; private set; }
    public int Y4 { get; private set; }

    public const int ID = -587873083;
    public override int GetTypeId() => ID;

    public  void Resolve(Dictionary<string, object> _tables)
    {
    }

    public  void TranslateText(System.Func<string, string, string> translator)
    {
    }

    public override string ToString()
    {
        return "{ "
        + "Y1:" + Y1 + ","
        + "Y2:" + Y2 + ","
        + "Y3:" + Y3 + ","
        + "Y4:" + Y4 + ","
        + "}";
    }
    }

}
