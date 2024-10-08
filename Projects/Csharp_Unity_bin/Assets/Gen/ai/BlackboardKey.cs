
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
public sealed partial class BlackboardKey : Luban.BeanBase
{
    public BlackboardKey(ByteBuf _buf) 
    {
        Name = _buf.ReadString();
        Desc = _buf.ReadString();
        IsStatic = _buf.ReadBool();
        KeyType = (ai.EKeyType)_buf.ReadInt();
        TypeClassName = _buf.ReadString();
    }

    public static BlackboardKey DeserializeBlackboardKey(ByteBuf _buf)
    {
        return new ai.BlackboardKey(_buf);
    }

    public readonly string Name;
    public readonly string Desc;
    public readonly bool IsStatic;
    public readonly ai.EKeyType KeyType;
    public readonly string TypeClassName;
   
    public const int __ID__ = -511559886;
    public override int GetTypeId() => __ID__;

    public  void ResolveRef(Tables tables)
    {
    }

    public override string ToString()
    {
        return "{ "
        + "name:" + Name + ","
        + "desc:" + Desc + ","
        + "isStatic:" + IsStatic + ","
        + "keyType:" + KeyType + ","
        + "typeClassName:" + TypeClassName + ","
        + "}";
    }
}

}

