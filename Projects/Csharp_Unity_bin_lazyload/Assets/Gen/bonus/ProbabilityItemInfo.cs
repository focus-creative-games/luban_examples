//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;



namespace cfg.bonus
{

public sealed partial class ProbabilityItemInfo :  Bright.Config.BeanBase 
{
    public ProbabilityItemInfo(ByteBuf _buf) 
    {
        ItemId = _buf.ReadInt();
        Num = _buf.ReadInt();
        Probability = _buf.ReadFloat();
        PostInit();
    }

    public static ProbabilityItemInfo DeserializeProbabilityItemInfo(ByteBuf _buf)
    {
        return new bonus.ProbabilityItemInfo(_buf);
    }

    public int ItemId { get; private set; }
    public item.Item ItemId_Ref { get; private set; }
    public int Num { get; private set; }
    public float Probability { get; private set; }

    public const int __ID__ = 1547874631;
    public override int GetTypeId() => __ID__;
    public override string ToString()
    {
        return "{ "
        + "ItemId:" + ItemId + ","
        + "Num:" + Num + ","
        + "Probability:" + Probability + ","
        + "}";
    }
    
    partial void PostInit();
}

}
