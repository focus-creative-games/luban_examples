
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

public sealed partial class CompositeJsonTable3 : Luban.BeanBase
{
    public CompositeJsonTable3(JToken _buf) 
    {
        JObject _obj = _buf as JObject;
        A = (int)_obj.GetValue("a");
        B = (int)_obj.GetValue("b");
    }

    public static CompositeJsonTable3 DeserializeCompositeJsonTable3(JToken _buf)
    {
        return new test.CompositeJsonTable3(_buf);
    }

    public readonly int A;
    public readonly int B;


    public const int __ID__ = 1566207896;
    public override int GetTypeId() => __ID__;

    public  void ResolveRef(Tables tables)
    {
    }

    public override string ToString()
    {
        return "{ "
        + "a:" + A + ","
        + "b:" + B + ","
        + "}";
    }
}
}

