
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

public sealed partial class H1 : Luban.BeanBase
{
    public H1(JToken _buf) 
    {
        JObject _obj = _buf as JObject;
        Y2 = test.H2.DeserializeH2(_obj.GetValue("y2"));
        Y3 = (int)_obj.GetValue("y3");
    }

    public static H1 DeserializeH1(JToken _buf)
    {
        return new test.H1(_buf);
    }

    public readonly test.H2 Y2;
    public readonly int Y3;


    public const int __ID__ = -1422503995;
    public override int GetTypeId() => __ID__;

    public  void ResolveRef(Tables tables)
    {
        Y2?.ResolveRef(tables);
    }

    public override string ToString()
    {
        return "{ "
        + "y2:" + Y2 + ","
        + "y3:" + Y3 + ","
        + "}";
    }
}
}

