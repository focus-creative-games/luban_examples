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

public sealed partial class DebugPrint :  ai.Task 
{
    public DebugPrint(ByteBuf _buf)  : base(_buf) 
    {
        Text = _buf.ReadString();
        PostInit();
    }

    public static DebugPrint DeserializeDebugPrint(ByteBuf _buf)
    {
        return new ai.DebugPrint(_buf);
    }

    public string Text { get; private set; }

    public const int __ID__ = 1357409728;
    public override int GetTypeId() => __ID__;
    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "NodeName:" + NodeName + ","
        + "Decorators:" + Bright.Common.StringUtil.CollectionToString(Decorators) + ","
        + "Services:" + Bright.Common.StringUtil.CollectionToString(Services) + ","
        + "IgnoreRestartSelf:" + IgnoreRestartSelf + ","
        + "Text:" + Text + ","
        + "}";
    }
    
    partial void PostInit();
}

}
