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



namespace cfg.bonus
{

public sealed partial class CoefficientItem :  bonus.Bonus 
{
    public CoefficientItem(ByteBuf _buf)  : base(_buf) 
    {
        BonusId = _buf.ReadInt();
        BonusList = bonus.Items.DeserializeItems(_buf);
        PostInit();
    }

    public static CoefficientItem DeserializeCoefficientItem(ByteBuf _buf)
    {
        return new bonus.CoefficientItem(_buf);
    }

    public int BonusId { get; protected set; }
    public bonus.Items BonusList { get; protected set; }

    public const int __ID__ = -229470727;
    public override int GetTypeId() => __ID__;

    public override void Resolve(Dictionary<string, object> _tables)
    {
        base.Resolve(_tables);
        BonusList?.Resolve(_tables);
        PostResolve();
    }

    public override void TranslateText(System.Func<string, string, string> translator)
    {
        base.TranslateText(translator);
        BonusList?.TranslateText(translator);
    }

    public void Reload(CoefficientItem reloadData)
    {
        BonusId = reloadData.BonusId;
        if(BonusList.GetTypeId() == reloadData.BonusList.GetTypeId())
        {
            //BonusList not dynamic
            BonusList.Reload(reloadData.BonusList);
        }else
        {
            typeof(CoefficientItem).GetProperty("BonusList").SetValue(this,reloadData.BonusList);
        }
    }

    public override string ToString()
    {
        return "{ "
        + "BonusId:" + BonusId + ","
        + "BonusList:" + BonusList + ","
        + "}";
    }
    
    partial void PostInit();
    partial void PostResolve();
}

}
