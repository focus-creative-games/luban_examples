//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;



namespace cfg.ai
{

public sealed partial class MoveToTarget :  ai.Task 
{
    public MoveToTarget(ByteBuf _buf)  : base(_buf) 
    {
        TargetActorKey = _buf.ReadString();
        AcceptableRadius = _buf.ReadFloat();
        PostInit();
    }

    public static MoveToTarget DeserializeMoveToTarget(ByteBuf _buf)
    {
        return new ai.MoveToTarget(_buf);
    }

    public string TargetActorKey { get; private set; }
    public float AcceptableRadius { get; private set; }

    public const int __ID__ = 514987779;
    public override int GetTypeId() => __ID__;
    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "NodeName:" + NodeName + ","
        + "Decorators:" + Bright.Common.StringUtil.CollectionToString(Decorators) + ","
        + "Services:" + Bright.Common.StringUtil.CollectionToString(Services) + ","
        + "IgnoreRestartSelf:" + IgnoreRestartSelf + ","
        + "TargetActorKey:" + TargetActorKey + ","
        + "AcceptableRadius:" + AcceptableRadius + ","
        + "}";
    }
    
    partial void PostInit();
}

}
