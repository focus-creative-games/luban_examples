
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Luban;
using Newtonsoft.Json.Linq;



namespace cfg.test
{

public abstract partial class Shape : Luban.BeanBase
{
    public Shape(JToken _buf) 
    {
        JObject _obj = _buf as JObject;
    }

    public static Shape DeserializeShape(JToken _buf)
    {
        switch (_buf.GetProperty("$type").GetString())
        {
            case "Circle": return new test.Circle(_buf);
            case "test2.Rectangle": return new test2.Rectangle(_buf);
            default: throw new SerializationException();
        }
    }




    public virtual void ResolveRef(Tables tables)
    {
    }

    public override string ToString()
    {
        return "{ "
        + "}";
    }
}
}

