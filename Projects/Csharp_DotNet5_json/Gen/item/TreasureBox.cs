
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

public sealed partial class TreasureBox :  item.ItemExtra 
{
    public TreasureBox(JsonElement _json)  : base(_json) 
    {
        { var _j = _json.GetProperty("key_item_id"); if (_j.ValueKind != JsonValueKind.Null) { KeyItemId = _j.GetInt32(); } else { KeyItemId = null; } }
        OpenLevel =  condition.MinLevel.DeserializeMinLevel(_json.GetProperty("open_level"));
        UseOnObtain = _json.GetProperty("use_on_obtain").GetBoolean();
        { var _json0 = _json.GetProperty("drop_ids"); DropIds = new System.Collections.Generic.List<int>(_json0.GetArrayLength()); foreach(JsonElement __e in _json0.EnumerateArray()) { int __v;  __v = __e.GetInt32();  DropIds.Add(__v); }   }
        { var _json0 = _json.GetProperty("choose_list"); ChooseList = new System.Collections.Generic.List<item.ChooseOneBonus>(_json0.GetArrayLength()); foreach(JsonElement __e in _json0.EnumerateArray()) { item.ChooseOneBonus __v;  __v =  item.ChooseOneBonus.DeserializeChooseOneBonus(__e);  ChooseList.Add(__v); }   }
    }

    public TreasureBox(int id, int? key_item_id, condition.MinLevel open_level, bool use_on_obtain, System.Collections.Generic.List<int> drop_ids, System.Collections.Generic.List<item.ChooseOneBonus> choose_list )  : base(id) 
    {
        this.KeyItemId = key_item_id;
        this.OpenLevel = open_level;
        this.UseOnObtain = use_on_obtain;
        this.DropIds = drop_ids;
        this.ChooseList = choose_list;
    }

    public static TreasureBox DeserializeTreasureBox(JsonElement _json)
    {
        return new item.TreasureBox(_json);
    }

    public readonly int? KeyItemId;
    public readonly condition.MinLevel OpenLevel;
    public readonly bool UseOnObtain;
    public readonly System.Collections.Generic.List<int> DropIds;
    public readonly System.Collections.Generic.List<item.ChooseOneBonus> ChooseList;

    public const int ID = 1494222369;
    public override int GetTypeId() => ID;

    public override void Resolve(Dictionary<string, object> _tables)
    {
        base.Resolve(_tables);
        OpenLevel?.Resolve(_tables);
        foreach(var _e in ChooseList) { _e?.Resolve(_tables); }
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "KeyItemId:" + KeyItemId + ","
        + "OpenLevel:" + OpenLevel + ","
        + "UseOnObtain:" + UseOnObtain + ","
        + "DropIds:" + Bright.Common.StringUtil.CollectionToString(DropIds) + ","
        + "ChooseList:" + Bright.Common.StringUtil.CollectionToString(ChooseList) + ","
        + "}";
    }
    }
}

