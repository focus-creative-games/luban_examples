
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

public sealed partial class MultiRowType2 :  Bright.Config.BeanBase 
{
    public MultiRowType2(ByteBuf _buf) 
    {
        Id = _buf.ReadInt();
        X = _buf.ReadInt();
        Y = _buf.ReadFloat();
    }

    public static MultiRowType2 DeserializeMultiRowType2(ByteBuf _buf)
    {
        return new test.MultiRowType2(_buf);
    }

    public int Id { get; private set; }
    public int X { get; private set; }
    public float Y { get; private set; }

    public const int ID = 540474971;
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
        + "Id:" + Id + ","
        + "X:" + X + ","
        + "Y:" + Y + ","
        + "}";
    }
    }

}
