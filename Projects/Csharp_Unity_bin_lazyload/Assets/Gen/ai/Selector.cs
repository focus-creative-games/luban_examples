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

public sealed partial class Selector :  ai.ComposeNode 
{
    public Selector(ByteBuf _buf)  : base(_buf) 
    {
        {int n0 = System.Math.Min(_buf.ReadSize(), _buf.Size);Children = new System.Collections.Generic.List<ai.FlowNode>(n0);for(var i0 = 0 ; i0 < n0 ; i0++) { ai.FlowNode _e0;  _e0 = ai.FlowNode.DeserializeFlowNode(_buf); Children.Add(_e0);}}
        PostInit();
    }

    public static Selector DeserializeSelector(ByteBuf _buf)
    {
        return new ai.Selector(_buf);
    }

    public System.Collections.Generic.List<ai.FlowNode> Children { get; private set; }

    public const int __ID__ = -1946981627;
    public override int GetTypeId() => __ID__;

    public override void Resolve(Dictionary<string, object> _tables)
    {
        base.Resolve(_tables);
        foreach(var _e in Children) { _e?.Resolve(_tables); }
        PostResolve();
    }

    public override void TranslateText(System.Func<string, string, string> translator)
    {
        base.TranslateText(translator);
        foreach(var _e in Children) { _e?.TranslateText(translator); }
    }

    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "NodeName:" + NodeName + ","
        + "Decorators:" + Bright.Common.StringUtil.CollectionToString(Decorators) + ","
        + "Services:" + Bright.Common.StringUtil.CollectionToString(Services) + ","
        + "Children:" + Bright.Common.StringUtil.CollectionToString(Children) + ","
        + "}";
    }
    
    partial void PostInit();
    partial void PostResolve();
}

}
