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

public sealed partial class BehaviorTree :  Bright.Config.BeanBase 
{
    public BehaviorTree(ByteBuf _buf) 
    {
        Id = _buf.ReadInt();
        Name = _buf.ReadString();
        Desc = _buf.ReadString();
        BlackboardId = _buf.ReadString();
        Root = ai.ComposeNode.DeserializeComposeNode(_buf);
        PostInit();
    }

    public static BehaviorTree DeserializeBehaviorTree(ByteBuf _buf)
    {
        return new ai.BehaviorTree(_buf);
    }

    public int Id { get; private set; }
    public string Name { get; private set; }
    public string Desc { get; private set; }
    public string BlackboardId { get; private set; }
    public ai.Blackboard BlackboardId_Ref { get; private set; }
    public ai.ComposeNode Root { get; private set; }

    public const int __ID__ = 159552822;
    public override int GetTypeId() => __ID__;
    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "Name:" + Name + ","
        + "Desc:" + Desc + ","
        + "BlackboardId:" + BlackboardId + ","
        + "Root:" + Root + ","
        + "}";
    }
    
    partial void PostInit();
}

}
