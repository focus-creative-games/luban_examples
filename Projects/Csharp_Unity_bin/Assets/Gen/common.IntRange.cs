
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Luban;


namespace cfg.common
{
public sealed partial class IntRange : Luban.BeanBase
{
    public IntRange(ByteBuf _buf) 
    {
        MIN = _buf.ReadInt();
        MAX = _buf.ReadInt();
    }

    public static IntRange DeserializeIntRange(ByteBuf _buf)
    {
        return new common.IntRange(_buf);
    }

    public readonly int MIN;
    public readonly int MAX;
   
    public const int __ID__ = -751013039;
    public override int GetTypeId() => __ID__;

    public  void ResolveRef(Tables tables)
    {
    }

    public override string ToString()
    {
        return "{ "
        + "min:" + MIN + ","
        + "max:" + MAX + ","
        + "}";
    }
}

}

