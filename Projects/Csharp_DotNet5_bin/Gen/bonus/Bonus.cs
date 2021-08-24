
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

public abstract partial class Bonus :  Bright.Config.BeanBase 
{
    public Bonus(ByteBuf _buf) 
    {
    }

    public Bonus() 
    {
    }

    public static Bonus DeserializeBonus(ByteBuf _buf)
    {
        switch (_buf.ReadInt())
        {
            case bonus.OneItem.ID: return new bonus.OneItem(_buf);
            case bonus.OneItems.ID: return new bonus.OneItems(_buf);
            case bonus.Item.ID: return new bonus.Item(_buf);
            case bonus.Items.ID: return new bonus.Items(_buf);
            case bonus.CoefficientItem.ID: return new bonus.CoefficientItem(_buf);
            case bonus.WeightItems.ID: return new bonus.WeightItems(_buf);
            case bonus.ProbabilityItems.ID: return new bonus.ProbabilityItems(_buf);
            case bonus.MultiBonus.ID: return new bonus.MultiBonus(_buf);
            case bonus.ProbabilityBonus.ID: return new bonus.ProbabilityBonus(_buf);
            case bonus.WeightBonus.ID: return new bonus.WeightBonus(_buf);
            case bonus.DropBonus.ID: return new bonus.DropBonus(_buf);
            default: throw new SerializationException();
        }
    }



    public virtual void Resolve(Dictionary<string, object> _tables)
    {
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "}";
    }
    }

}
