
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
/// <summary>
/// 圆
/// </summary>

public sealed partial class Circle : Shape
{
    public Circle(JToken _buf)  : base(_buf) 
    {
        JObject _obj = _buf as JObject;
        Radius = (float)_obj.GetValue("radius");
    }

    public static Circle DeserializeCircle(JToken _buf)
    {
        return new test.Circle(_buf);
    }

    /// <summary>
    /// 半径
    /// </summary>
    public readonly float Radius;


    public const int __ID__ = 2131829196;
    public override int GetTypeId() => __ID__;

    public override void ResolveRef(Tables tables)
    {
        base.ResolveRef(tables);
    }

    public override string ToString()
    {
        return "{ "
        + "radius:" + Radius + ","
        + "}";
    }
}
}

