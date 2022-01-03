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

public sealed class MultiBonus :  bonus.Bonus 
{
    public MultiBonus(JsonElement _json)  : base(_json) 
    {
        { var _json0 = _json.GetProperty("bonuses"); int _n = _json0.GetArrayLength(); Bonuses = new bonus.Bonus[_n]; int _index=0; foreach(JsonElement __e in _json0.EnumerateArray()) { bonus.Bonus __v;  __v =  bonus.Bonus.DeserializeBonus(__e);  Bonuses[_index++] = __v; }   }
    }

    public MultiBonus(bonus.Bonus[] bonuses )  : base() 
    {
        this.Bonuses = bonuses;
    }

    public static MultiBonus DeserializeMultiBonus(JsonElement _json)
    {
        return new bonus.MultiBonus(_json);
    }

    public bonus.Bonus[] Bonuses { get; private set; }

    public const int __ID__ = 1421907893;
    public override int GetTypeId() => __ID__;

    public override void Resolve(Dictionary<string, object> _tables)
    {
        base.Resolve(_tables);
        foreach(var _e in Bonuses) { _e?.Resolve(_tables); }
    }

    public override void TranslateText(System.Func<string, string, string> translator)
    {
        base.TranslateText(translator);
        foreach(var _e in Bonuses) { _e?.TranslateText(translator); }
    }

    public override string ToString()
    {
        return "{ "
        + "Bonuses:" + Bright.Common.StringUtil.CollectionToString(Bonuses) + ","
        + "}";
    }
    }
}
