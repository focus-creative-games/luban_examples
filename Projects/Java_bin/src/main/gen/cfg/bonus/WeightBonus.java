
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg.bonus;

import bright.serialization.*;



public final class WeightBonus extends  cfg.bonus.Bonus 
{
    public WeightBonus(ByteBuf _buf)
    { 
        super(_buf);
        {int n = Math.min(_buf.readSize(), _buf.size());bonuses = new cfg.bonus.WeightBonusInfo[n];for(var i = 0 ; i < n ; i++) { cfg.bonus.WeightBonusInfo _e;_e = cfg.bonus.WeightBonusInfo.deserializeWeightBonusInfo(_buf); bonuses[i] = _e;}}
    }

    public WeightBonus(cfg.bonus.WeightBonusInfo[] bonuses )
    {
        super();
        this.bonuses = bonuses;
    }

    public static WeightBonus deserializeWeightBonus(ByteBuf _buf)
    {
        return new WeightBonus(_buf);
    }

    public final cfg.bonus.WeightBonusInfo[] bonuses;

    public static final int ID = -362807016;

    @Override
    public int getTypeId() { return ID; }

    @Override
    public void serialize(ByteBuf os)
    {
        throw new UnsupportedOperationException();
    }

    @Override
    public void deserialize(ByteBuf os)
    {
        throw new UnsupportedOperationException();
    }

    public void resolve(java.util.HashMap<String, Object> _tables)
    {
        super.resolve(_tables);
            for(cfg.bonus.WeightBonusInfo _e : bonuses) { if (_e != null) _e.resolve(_tables); }
    }

    @Override
    public String toString()
    {
        return "{ "
        + "bonuses:" + bonuses + ","
        + "}";
    }
}

