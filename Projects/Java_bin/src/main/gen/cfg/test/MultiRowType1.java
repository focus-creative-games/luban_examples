
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg.test;

import bright.serialization.*;



/**
 * 
 */
public final class MultiRowType1 extends  bright.serialization.AbstractBean 
{
    public MultiRowType1(ByteBuf _buf)
    { 
        id = _buf.readInt();
        x = _buf.readInt();
    }

    public MultiRowType1(int id, int x )
    {
        this.id = id;
        this.x = x;
    }

    public static MultiRowType1 deserializeMultiRowType1(ByteBuf _buf)
    {
        return new MultiRowType1(_buf);
    }

    /**
     * 
     */
    public final int id;
    /**
     * 
     */
    public final int x;

    public static final int ID = 540474970;

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
    }

    @Override
    public String toString()
    {
        return "{ "
        + "id:" + id + ","
        + "x:" + x + ","
        + "}";
    }
}
