//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;
using System.Linq;



namespace cfg.ai
{

public sealed partial class Sequence :  ai.ComposeNode 
{
    public Sequence(ByteBuf _buf)  : base(_buf) 
    {
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);Children = new System.Collections.Generic.List<ai.FlowNode>(n);for(var i = 0 ; i < n ; i++) { ai.FlowNode _e;  _e = ai.FlowNode.DeserializeFlowNode(_buf); Children.Add(_e);}}
        PostInit();
    }

    public static Sequence DeserializeSequence(ByteBuf _buf)
    {
        return new ai.Sequence(_buf);
    }

    public System.Collections.Generic.List<ai.FlowNode> Children { get; protected set; }

    public const int __ID__ = -1789006105;
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

    public void Reload(Sequence reloadData)
    {
        Id = reloadData.Id;
        NodeName = reloadData.NodeName;
        if(Decorators.Count<reloadData.Decorators.Count)
        {
            Decorators.AddRange(new List<ai.Decorator>(reloadData.Decorators.Count-Decorators.Count));
        }else if(Decorators.Count>reloadData.Decorators.Count)
        {
            Decorators.RemoveRange(reloadData.Decorators.Count, Decorators.Count-reloadData.Decorators.Count);
        }
        for (int i = 0; i < reloadData.Decorators.Count; i++)
        {
            Decorators[i] = reloadData.Decorators[i];
        }
        if(Services.Count<reloadData.Services.Count)
        {
            Services.AddRange(new List<ai.Service>(reloadData.Services.Count-Services.Count));
        }else if(Services.Count>reloadData.Services.Count)
        {
            Services.RemoveRange(reloadData.Services.Count, Services.Count-reloadData.Services.Count);
        }
        for (int i = 0; i < reloadData.Services.Count; i++)
        {
            Services[i] = reloadData.Services[i];
        }
        if(Children.Count<reloadData.Children.Count)
        {
            Children.AddRange(new List<ai.FlowNode>(reloadData.Children.Count-Children.Count));
        }else if(Children.Count>reloadData.Children.Count)
        {
            Children.RemoveRange(reloadData.Children.Count, Children.Count-reloadData.Children.Count);
        }
        for (int i = 0; i < reloadData.Children.Count; i++)
        {
            Children[i] = reloadData.Children[i];
        }
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
