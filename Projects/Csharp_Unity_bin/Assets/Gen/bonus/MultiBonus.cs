//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;



namespace cfg.bonus
{

public sealed partial class MultiBonus :  bonus.Bonus 
{
    public MultiBonus(ByteBuf _buf)  : base(_buf) 
    {
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);Bonuses = new bonus.Bonus[n];for(var i = 0 ; i < n ; i++) { bonus.Bonus _e;_e = bonus.Bonus.DeserializeBonus(_buf); Bonuses[i] = _e;}}
        PostInit();
    }

    public static MultiBonus DeserializeMultiBonus(ByteBuf _buf)
    {
        return new bonus.MultiBonus(_buf);
    }

    public bonus.Bonus[] Bonuses { get; private set; }

    public const int __ID__ = 1421907893;
    public override int GetTypeId() => __ID__;

    public override void Resolve(Dictionary<string, object> _tables)
    {
        base.Resolve(_tables);
        foreach(var _e in Bonuses) { _e?.Resolve(_tables); }
        PostResolve();
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
    
    partial void PostInit();
    partial void PostResolve();
}

}
