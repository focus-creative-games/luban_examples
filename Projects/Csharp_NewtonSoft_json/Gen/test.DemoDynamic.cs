
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

public abstract partial class DemoDynamic : Luban.BeanBase
{
    public DemoDynamic(JToken _buf) 
    {
        JObject _obj = _buf as JObject;
        X1 = (int)_obj.GetValue("x1");
    }

    public static DemoDynamic DeserializeDemoDynamic(JToken _buf)
    {
        var _obj=_buf as JObject;
        switch (_obj.GetValue("$type").ToString())
        {
            case "DemoD2": return new test.DemoD2(_buf);
            case "DemoE1": return new test.DemoE1(_buf);
            case "test.login.RoleInfo": return new test.login.RoleInfo(_buf);
            case "DemoD5": return new test.DemoD5(_buf);
            default: throw new SerializationException();
        }
    }

    public readonly int X1;



    public virtual void ResolveRef(Tables tables)
    {
    }

    public override string ToString()
    {
        return "{ "
        + "x1:" + X1 + ","
        + "}";
    }
}
}

