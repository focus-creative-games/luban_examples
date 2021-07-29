
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



namespace cfg.bonus
{

/// <summary>
/// 
/// </summary>
public sealed partial class ProbabilityBonusInfo :  Bright.Config.BeanBase 
{
    public ProbabilityBonusInfo(JsonElement _buf) 
    {
        Bonus =  bonus.Bonus.DeserializeBonus(_buf.GetProperty("bonus"));
        Probability = _buf.GetProperty("probability").GetSingle();
    }

    public ProbabilityBonusInfo(bonus.Bonus bonus, float probability ) 
    {
        this.Bonus = bonus;
        this.Probability = probability;
    }

    public static ProbabilityBonusInfo DeserializeProbabilityBonusInfo(JsonElement _buf)
    {
        return new bonus.ProbabilityBonusInfo(_buf);
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

