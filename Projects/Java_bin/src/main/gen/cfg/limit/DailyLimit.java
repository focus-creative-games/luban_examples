
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg.limit;

import bright.serialization.*;



public final class DailyLimit extends  cfg.limit.DailyLimitBase 
{
    public DailyLimit(ByteBuf _buf)
    { 
        super(_buf);
        num = _buf.readInt();
    }

    public DailyLimit(int num )
    {
        super();
        this.num = num;
    }

    public static DailyLimit deserializeDailyLimit(ByteBuf _buf)
    {
        return new DailyLimit(_buf);
    }

    public final int num;

    public static final int ID = 303235413;

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
    }

    @Override
    public String toString()
    {
        return "{ "
        + "num:" + num + ","
        + "}";
    }
}

