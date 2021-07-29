
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Bright.Serialization;
using System.Collections.Generic;
using System.Text.Json;



namespace cfg.ai
{

/// <summary>
/// 
/// </summary>
public sealed partial class DebugPrint :  ai.Task 
{
    public DebugPrint(JsonElement _buf)  : base(_buf) 
    {
        Text = _buf.GetProperty("text").GetString();
    }

    public DebugPrint(int id, string node_name, System.Collections.Generic.List<ai.Decorator> decorators, System.Collections.Generic.List<ai.Service> services, bool ignore_restart_self, string text )  : base(id,node_name,decorators,services,ignore_restart_self) 
    {
        this.Text = text;
    }

    public static DebugPrint DeserializeDebugPrint(JsonElement _buf)
    {
        return new ai.DebugPrint(_buf);
    }

    /// <summary>
    /// 
    /// </summary>
    public readonly string Text;

    public const int ID = 1357409728;
    public override int GetTypeId() => ID;

    public override void Resolve(Dictionary<string, object> _tables)
    {
        base.Resolve(_tables);
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

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
    }
}

