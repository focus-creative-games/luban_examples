//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;
using System.Linq;



namespace cfg.test
{

public abstract partial class Shape :  Bright.Config.BeanBase 
{
    public Shape(ByteBuf _buf) 
    {
        PostInit();
    }

    public static Shape DeserializeShape(ByteBuf _buf)
    {
        switch (_buf.ReadInt())
        {
            case test.Circle.__ID__: return new test.Circle(_buf);
            case test2.Rectangle.__ID__: return new test2.Rectangle(_buf);
            default: throw new SerializationException();
        }
    }



    public virtual void Resolve(Dictionary<string, object> _tables)
    {
        PostResolve();
    }

    public virtual void TranslateText(System.Func<string, string, string> translator)
    {
    }

    public void Reload(Shape reloadData)
    {
    }

    public override string ToString()
    {
        return "{ "
        + "}";
    }
    
    partial void PostInit();
    partial void PostResolve();
}

}
