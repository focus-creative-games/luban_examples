
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



namespace cfg.bonus
{

/// <summary>
/// 
/// </summary>
public sealed partial class ProbabilityBonusInfo :  Bright.Config.BeanBase 
{
    public ProbabilityBonusInfo(JSONNode _json) 
    {
        { if(!_json["bonus"].IsObject) { throw new SerializationException(); }  Bonus = bonus.Bonus.DeserializeBonus(_json["bonus"]); }
        { if(!_json["probability"].IsNumber) { throw new SerializationException(); }  Probability = _json["probability"]; }
    }

    public ProbabilityBonusInfo(bonus.Bonus bonus, float probability ) 
    {
        this.Bonus = bonus;
        this.Probability = probability;
    }

    public static ProbabilityBonusInfo DeserializeProbabilityBonusInfo(JSONNode _json)
    {
        return new bonus.ProbabilityBonusInfo(_json);
    }

    /// <summary>
    /// 
    /// </summary>
    public readonly bonus.Bonus Bonus;
    /// <summary>
    /// 
    /// </summary>
    public readonly float Probability;

    public const int ID = 46960455;
    public override int GetTypeId() => ID;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        Bonus?.Resolve(_tables);
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "Bonus:" + Bonus + ","
        + "Probability:" + Probability + ","
        + "}";
    }
    }
}
