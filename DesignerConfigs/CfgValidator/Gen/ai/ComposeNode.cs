
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
   
public abstract partial class ComposeNode :  ai.FlowNode 
{
    public ComposeNode(JsonElement _buf)  : base(_buf) 
    {
    }

    public ComposeNode(int id, string node_name, System.Collections.Generic.List<ai.Decorator> decorators, System.Collections.Generic.List<ai.Service> services )  : base(id,node_name,decorators,services) 
    {
    }

    public static ComposeNode DeserializeComposeNode(JsonElement _buf)
    {
        switch (_buf.GetProperty("__type__").GetString())
        {
            case "Sequence": return new ai.Sequence(_buf);
            case "Selector": return new ai.Selector(_buf);
            case "SimpleParallel": return new ai.SimpleParallel(_buf);
            default: throw new SerializationException();
        }
    }



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
        + "}";
    }
    }
}

