
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
public sealed partial class TestFieldVariant2 : Luban.BeanBase
{
    public TestFieldVariant2(ByteBuf _buf) 
    {
        Id = _buf.ReadInt();
        Name = _buf.ReadString();
    }

    public static TestFieldVariant2 DeserializeTestFieldVariant2(ByteBuf _buf)
    {
        return new test.TestFieldVariant2(_buf);
    }

    public readonly int Id;
    public readonly string Name;
   
    public const int __ID__ = 2070591865;
    public override int GetTypeId() => __ID__;

    public  void ResolveRef(Tables tables)
    {
    }

    public override string ToString()
    {
        return "{ "
        + "id:" + Id + ","
        + "name:" + Name + ","
        + "}";
    }
}

}

