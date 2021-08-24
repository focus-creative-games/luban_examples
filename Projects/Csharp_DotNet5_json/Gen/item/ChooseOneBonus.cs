
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



namespace cfg.item
{

public sealed partial class ChooseOneBonus :  Bright.Config.BeanBase 
{
    public ChooseOneBonus(JsonElement _json) 
    {
        DropId = _json.GetProperty("drop_id").GetInt32();
        IsUnique = _json.GetProperty("is_unique").GetBoolean();
    }

    public ChooseOneBonus(int drop_id, bool is_unique ) 
    {
        this.DropId = drop_id;
        this.IsUnique = is_unique;
    }

    public static ChooseOneBonus DeserializeChooseOneBonus(JsonElement _json)
    {
        return new item.ChooseOneBonus(_json);
    }

    public readonly int DropId;
    public bonus.DropInfo DropId_Ref;
    public readonly bool IsUnique;

    public const int ID = 228058347;
    public override int GetTypeId() => ID;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        this.DropId_Ref = (_tables["bonus.TbDrop"] as bonus.TbDrop).GetOrDefault(DropId);
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "DropId:" + DropId + ","
        + "IsUnique:" + IsUnique + ","
        + "}";
    }
    }
}
