//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;



namespace cfg.test
{

/// <summary>
/// 圆
/// </summary>
public sealed partial class Circle :  Shape 
{
    public Circle(ByteBuf _buf)  : base(_buf) 
    {
        Radius = _buf.ReadFloat();
        PostInit();
    }

    public static Circle DeserializeCircle(ByteBuf _buf)
    {
        return new test.Circle(_buf);
    }

    /// <summary>
    /// 半径
    /// </summary>
    public float Radius { get; private set; }

    public const int __ID__ = 2131829196;
    public override int GetTypeId() => __ID__;
    public override string ToString()
    {
        return "{ "
        + "Radius:" + Radius + ","
        + "}";
    }
    
    partial void PostInit();
}

}
