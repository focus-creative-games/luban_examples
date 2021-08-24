
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

public abstract partial class Service :  ai.Node 
{
    public Service(ByteBuf _buf)  : base(_buf) 
    {
    }

    public Service(int id, string node_name )  : base(id,node_name) 
    {
    }

    public static Service DeserializeService(ByteBuf _buf)
    {
        switch (_buf.ReadInt())
        {
            case ai.UeSetDefaultFocus.ID: return new ai.UeSetDefaultFocus(_buf);
            case ai.ExecuteTimeStatistic.ID: return new ai.ExecuteTimeStatistic(_buf);
            case ai.ChooseTarget.ID: return new ai.ChooseTarget(_buf);
            case ai.KeepFaceTarget.ID: return new ai.KeepFaceTarget(_buf);
            case ai.GetOwnerPlayer.ID: return new ai.GetOwnerPlayer(_buf);
            case ai.UpdateDailyBehaviorProps.ID: return new ai.UpdateDailyBehaviorProps(_buf);
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
        + "}";
    }
    }

}
