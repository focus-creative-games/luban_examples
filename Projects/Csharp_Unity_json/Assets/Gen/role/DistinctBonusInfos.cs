
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;
using SimpleJSON;



namespace cfg.role
{

public sealed partial class DistinctBonusInfos :  Bright.Config.BeanBase 
{
    public DistinctBonusInfos(JSONNode _json) 
    {
        { if(!_json["effective_level"].IsNumber) { throw new SerializationException(); }  EffectiveLevel = _json["effective_level"]; }
        { var _json1 = _json["bonus_info"]; if(!_json1.IsArray) { throw new SerializationException(); } BonusInfo = new System.Collections.Generic.List<role.BonusInfo>(_json1.Count); foreach(JSONNode __e in _json1.Children) { role.BonusInfo __v;  { if(!__e.IsObject) { throw new SerializationException(); }  __v = role.BonusInfo.DeserializeBonusInfo(__e); }  BonusInfo.Add(__v); }   }
    }

    public DistinctBonusInfos(int effective_level, System.Collections.Generic.List<role.BonusInfo> bonus_info ) 
    {
        this.EffectiveLevel = effective_level;
        this.BonusInfo = bonus_info;
    }

    public static DistinctBonusInfos DeserializeDistinctBonusInfos(JSONNode _json)
    {
        return new role.DistinctBonusInfos(_json);
    }

    public readonly int EffectiveLevel;
    public readonly System.Collections.Generic.List<role.BonusInfo> BonusInfo;

    public const int ID = -854361766;
    public override int GetTypeId() => ID;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        foreach(var _e in BonusInfo) { _e?.Resolve(_tables); }
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "EffectiveLevel:" + EffectiveLevel + ","
        + "BonusInfo:" + Bright.Common.StringUtil.CollectionToString(BonusInfo) + ","
        + "}";
    }
    }
}
