
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
   
public sealed partial class KeepFaceTarget :  ai.Service 
{
    public KeepFaceTarget(ByteBuf _buf)  : base(_buf) 
    {
        TargetActorKey = _buf.ReadString();
    }

    public KeepFaceTarget(int id, string node_name, string target_actor_key )  : base(id,node_name) 
    {
        this.TargetActorKey = target_actor_key;
    }

    public static KeepFaceTarget DeserializeKeepFaceTarget(ByteBuf _buf)
    {
    
        return new ai.KeepFaceTarget(_buf);
    
    }

     public readonly string TargetActorKey;


    public const int ID = 1195270745;
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
        + "TargetActorKey:" + TargetActorKey + ","
        + "}";
    }
    }

}

