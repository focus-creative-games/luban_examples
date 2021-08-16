
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Bright.Serialization;
using System.Collections.Generic;



namespace cfg.role
{

public sealed partial class BonusInfo :  Bright.Config.BeanBase 
{
    public BonusInfo(ByteBuf _buf) 
    {
        Type = (item.ECurrencyType)_buf.ReadInt();
        Coefficient = _buf.ReadFloat();
    }

    public BonusInfo(item.ECurrencyType type, float coefficient ) 
    {
        this.Type = type;
        this.Coefficient = coefficient;
    }

    public static BonusInfo DeserializeBonusInfo(ByteBuf _buf)
    {
        return new role.BonusInfo(_buf);
    }

    public readonly item.ECurrencyType Type;
    public readonly float Coefficient;

    public const int ID = -1354421803;
    public override int GetTypeId() => ID;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "Type:" + Type + ","
        + "Coefficient:" + Coefficient + ","
        + "}";
    }
    }

}

