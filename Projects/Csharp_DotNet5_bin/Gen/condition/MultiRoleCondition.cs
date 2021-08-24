
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;



namespace cfg.condition
{

public sealed partial class MultiRoleCondition :  condition.RoleCondition 
{
    public MultiRoleCondition(ByteBuf _buf)  : base(_buf) 
    {
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);Conditions = new condition.RoleCondition[n];for(var i = 0 ; i < n ; i++) { condition.RoleCondition _e;_e = condition.RoleCondition.DeserializeRoleCondition(_buf); Conditions[i] = _e;}}
    }

    public MultiRoleCondition(condition.RoleCondition[] conditions )  : base() 
    {
        this.Conditions = conditions;
    }

    public static MultiRoleCondition DeserializeMultiRoleCondition(ByteBuf _buf)
    {
        return new condition.MultiRoleCondition(_buf);
    }

    public readonly condition.RoleCondition[] Conditions;

    public const int ID = 934079583;
    public override int GetTypeId() => ID;

    public override void Resolve(Dictionary<string, object> _tables)
    {
        base.Resolve(_tables);
        foreach(var _e in Conditions) { _e?.Resolve(_tables); }
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "Conditions:" + Bright.Common.StringUtil.CollectionToString(Conditions) + ","
        + "}";
    }
    }

}
