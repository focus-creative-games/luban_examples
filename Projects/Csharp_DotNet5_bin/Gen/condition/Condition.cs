
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;



namespace cfg.condition
{

public abstract partial class Condition :  Bright.Config.BeanBase 
{
    public Condition(ByteBuf _buf) 
    {
    }

    public Condition() 
    {
    }

    public static Condition DeserializeCondition(ByteBuf _buf)
    {
        switch (_buf.ReadInt())
        {
            case condition.TimeRange.ID: return new condition.TimeRange(_buf);
            case condition.MultiRoleCondition.ID: return new condition.MultiRoleCondition(_buf);
            case condition.GenderLimit.ID: return new condition.GenderLimit(_buf);
            case condition.MinLevel.ID: return new condition.MinLevel(_buf);
            case condition.MaxLevel.ID: return new condition.MaxLevel(_buf);
            case condition.MinMaxLevel.ID: return new condition.MinMaxLevel(_buf);
            case condition.ClothesPropertyScoreGreaterThan.ID: return new condition.ClothesPropertyScoreGreaterThan(_buf);
            case condition.ContainsItem.ID: return new condition.ContainsItem(_buf);
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
