
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

public sealed class MultiIndexList :  Bright.Config.BeanBase 
{
    public MultiIndexList(ByteBuf _buf) 
    {
        Id1 = _buf.ReadInt();
        Id2 = _buf.ReadLong();
        Id3 = _buf.ReadString();
        Num = _buf.ReadInt();
        Desc = _buf.ReadString();
    }

    public static MultiIndexList DeserializeMultiIndexList(ByteBuf _buf)
    {
        return new test.MultiIndexList(_buf);
    }

    public int Id1 { get; private set; }
    public long Id2 { get; private set; }
    public string Id3 { get; private set; }
    public int Num { get; private set; }
    public string Desc { get; private set; }

    public const int __ID__ = 2016237651;
    public override int GetTypeId() => __ID__;

    public  void Resolve(Dictionary<string, object> _tables)
    {
    }

    public  void TranslateText(System.Func<string, string, string> translator)
    {
    }

    public override string ToString()
    {
        return "{ "
        + "Id1:" + Id1 + ","
        + "Id2:" + Id2 + ","
        + "Id3:" + Id3 + ","
        + "Num:" + Num + ","
        + "Desc:" + Desc + ","
        + "}";
    }
    }

}
