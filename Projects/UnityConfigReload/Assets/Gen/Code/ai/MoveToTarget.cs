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

    public string TargetActorKey { get; protected set; }
    public float AcceptableRadius { get; protected set; }

    public const int __ID__ = 514987779;
    public override int GetTypeId() => __ID__;

    public override void Resolve(Dictionary<string, object> _tables)
    {
        base.Resolve(_tables);
        PostResolve();
    }

    public override void TranslateText(System.Func<string, string, string> translator)
    {
        base.TranslateText(translator);
    }

    public void Reload(MoveToTarget reloadData)
    {
        Id = reloadData.Id;
        NodeName = reloadData.NodeName;
        //list
        if(Decorators==null)
        {
            Decorators = reloadData.Decorators;
        }else
        {
            Decorators.Capacity = reloadData.Decorators.Count;
            for (int i = 0; i < reloadData.Decorators.Count; i++)
            {
                //list is_dynamic
                if(Decorators[i].GetTypeId() == reloadData.Decorators[i].GetTypeId())
                {
                    switch (reloadData.Decorators[i].GetTypeId())
                    {
                        case ai.UeLoop.__ID__:
                            (Decorators[i] as ai.UeLoop).Reload(reloadData.Decorators[i] as ai.UeLoop);
                            break;
                        case ai.UeCooldown.__ID__:
                            (Decorators[i] as ai.UeCooldown).Reload(reloadData.Decorators[i] as ai.UeCooldown);
                            break;
                        case ai.UeTimeLimit.__ID__:
                            (Decorators[i] as ai.UeTimeLimit).Reload(reloadData.Decorators[i] as ai.UeTimeLimit);
                            break;
                        case ai.UeBlackboard.__ID__:
                            (Decorators[i] as ai.UeBlackboard).Reload(reloadData.Decorators[i] as ai.UeBlackboard);
                            break;
                        case ai.UeForceSuccess.__ID__:
                            (Decorators[i] as ai.UeForceSuccess).Reload(reloadData.Decorators[i] as ai.UeForceSuccess);
                            break;
                        case ai.IsAtLocation.__ID__:
                            (Decorators[i] as ai.IsAtLocation).Reload(reloadData.Decorators[i] as ai.IsAtLocation);
                            break;
                        case ai.DistanceLessThan.__ID__:
                            (Decorators[i] as ai.DistanceLessThan).Reload(reloadData.Decorators[i] as ai.DistanceLessThan);
                            break;
                    }
                }else
                {
                    Decorators[i] = reloadData.Decorators[i];
                }
            }

        }
        //list
        if(Services==null)
        {
            Services = reloadData.Services;
        }else
        {
            Services.Capacity = reloadData.Services.Count;
            for (int i = 0; i < reloadData.Services.Count; i++)
            {
                //list is_dynamic
                if(Services[i].GetTypeId() == reloadData.Services[i].GetTypeId())
                {
                    switch (reloadData.Services[i].GetTypeId())
                    {
                        case ai.UeSetDefaultFocus.__ID__:
                            (Services[i] as ai.UeSetDefaultFocus).Reload(reloadData.Services[i] as ai.UeSetDefaultFocus);
                            break;
                        case ai.ExecuteTimeStatistic.__ID__:
                            (Services[i] as ai.ExecuteTimeStatistic).Reload(reloadData.Services[i] as ai.ExecuteTimeStatistic);
                            break;
                        case ai.ChooseTarget.__ID__:
                            (Services[i] as ai.ChooseTarget).Reload(reloadData.Services[i] as ai.ChooseTarget);
                            break;
                        case ai.KeepFaceTarget.__ID__:
                            (Services[i] as ai.KeepFaceTarget).Reload(reloadData.Services[i] as ai.KeepFaceTarget);
                            break;
                        case ai.GetOwnerPlayer.__ID__:
                            (Services[i] as ai.GetOwnerPlayer).Reload(reloadData.Services[i] as ai.GetOwnerPlayer);
                            break;
                        case ai.UpdateDailyBehaviorProps.__ID__:
                            (Services[i] as ai.UpdateDailyBehaviorProps).Reload(reloadData.Services[i] as ai.UpdateDailyBehaviorProps);
                            break;
                    }
                }else
                {
                    Services[i] = reloadData.Services[i];
                }
            }

        }
        IgnoreRestartSelf = reloadData.IgnoreRestartSelf;
        TargetActorKey = reloadData.TargetActorKey;
        AcceptableRadius = reloadData.AcceptableRadius;
    }

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
    partial void PostResolve();
}

}
