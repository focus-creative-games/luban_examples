
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
public abstract partial class RefDynamicBase : Luban.BeanBase
{
    public RefDynamicBase(JsonElement _buf) 
    {
        X = _buf.GetProperty("x").GetInt32();
        X_Ref = null;
    }

    public static RefDynamicBase DeserializeRefDynamicBase(JsonElement _buf)
    {
        switch (_buf.GetProperty("$type").GetString())
        {
            case "RefBean": return new test.RefBean(_buf);
            default: throw new SerializationException();
        }
    }

    public readonly int X;
    public test.TestBeRef X_Ref;
   

    public virtual void ResolveRef(Tables tables)
    {
        X_Ref = tables.TbTestBeRef.GetOrDefault(X);
    }

    public override string ToString()
    {
        return "{ "
        + "x:" + X + ","
        + "}";
    }
}

}

