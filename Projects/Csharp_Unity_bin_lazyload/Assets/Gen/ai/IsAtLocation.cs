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

public sealed partial class IsAtLocation :  ai.Decorator 
{
    public IsAtLocation(ByteBuf _buf)  : base(_buf) 
    {
        AcceptableRadius = _buf.ReadFloat();
        KeyboardKey = _buf.ReadString();
        InverseCondition = _buf.ReadBool();
        PostInit();
    }

    public static IsAtLocation DeserializeIsAtLocation(ByteBuf _buf)
    {
        return new ai.IsAtLocation(_buf);
    }

    public float AcceptableRadius { get; private set; }
    public string KeyboardKey { get; private set; }
    public bool InverseCondition { get; private set; }

    public const int __ID__ = 1255972344;
    public override int GetTypeId() => __ID__;
    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "NodeName:" + NodeName + ","
        + "FlowAbortMode:" + FlowAbortMode + ","
        + "AcceptableRadius:" + AcceptableRadius + ","
        + "KeyboardKey:" + KeyboardKey + ","
        + "InverseCondition:" + InverseCondition + ","
        + "}";
    }
    
    partial void PostInit();
}

}
