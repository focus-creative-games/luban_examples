
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

public sealed partial class InnerGroup : Luban.BeanBase
{
    public InnerGroup(JToken _buf) 
    {
        JObject _obj = _buf as JObject;
        Y1 = (int)_obj.GetValue("y1");
        Y3 = (int)_obj.GetValue("y3");
        Y4 = (int)_obj.GetValue("y4");
    }

    public static InnerGroup DeserializeInnerGroup(JToken _buf)
    {
        return new test.InnerGroup(_buf);
    }

    public readonly int Y1;
    public readonly int Y3;
    public readonly int Y4;


    public const int __ID__ = -587873083;
    public override int GetTypeId() => __ID__;

    public  void ResolveRef(Tables tables)
    {
    }

    public override string ToString()
    {
        return "{ "
        + "y1:" + Y1 + ","
        + "y3:" + Y3 + ","
        + "y4:" + Y4 + ","
        + "}";
    }
}
}

