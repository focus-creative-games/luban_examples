
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Luban;
using System.Text.Json;


namespace cfg.test
{
public sealed partial class TestFieldVariant : Luban.BeanBase
{
    public TestFieldVariant(JsonElement _buf) 
    {
        Id = _buf.GetProperty("id").GetInt32();
        Name = _buf.GetProperty("name").GetString();
    }

    public static TestFieldVariant DeserializeTestFieldVariant(JsonElement _buf)
    {
        return new test.TestFieldVariant(_buf);
    }

    public readonly int Id;
    public readonly string Name;
   
    public const int __ID__ = 759529945;
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

