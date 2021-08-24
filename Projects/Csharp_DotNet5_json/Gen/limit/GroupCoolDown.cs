
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



namespace cfg.limit
{

public sealed partial class GroupCoolDown :  limit.LimitBase 
{
    public GroupCoolDown(JsonElement _json)  : base(_json) 
    {
        GroupId = _json.GetProperty("group_id").GetInt32();
        Duration = _json.GetProperty("duration").GetInt32();
    }

    public GroupCoolDown(int group_id, int duration )  : base() 
    {
        this.GroupId = group_id;
        this.Duration = duration;
    }

    public static GroupCoolDown DeserializeGroupCoolDown(JsonElement _json)
    {
        return new limit.GroupCoolDown(_json);
    }

    public readonly int GroupId;
    public readonly int Duration;

    public const int ID = 394328599;
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
        + "GroupId:" + GroupId + ","
        + "Duration:" + Duration + ","
        + "}";
    }
    }
}
