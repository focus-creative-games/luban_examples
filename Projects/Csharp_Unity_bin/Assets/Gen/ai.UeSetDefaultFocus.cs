
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Luban;


namespace cfg.ai
{
public sealed partial class UeSetDefaultFocus : ai.Service
{
    public UeSetDefaultFocus(ByteBuf _buf)  : base(_buf) 
    {
        KeyboardKey = _buf.ReadString();
    }

    public static UeSetDefaultFocus DeserializeUeSetDefaultFocus(ByteBuf _buf)
    {
        return new ai.UeSetDefaultFocus(_buf);
    }

    public readonly string KeyboardKey;
   
    public const int __ID__ = 1812449155;
    public override int GetTypeId() => __ID__;

    public override void ResolveRef(Tables tables)
    {
        base.ResolveRef(tables);
        
    }

    public override string ToString()
    {
        return "{ "
        + "id:" + Id + ","
        + "nodeName:" + NodeName + ","
        + "keyboardKey:" + KeyboardKey + ","
        + "}";
    }
}

}
