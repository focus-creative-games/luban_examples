
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
public final class DemoType1 extends  bright.serialization.AbstractBean 
{
    public DemoType1(ByteBuf _buf)
    { 
        x1 = _buf.readInt();
    }

    public DemoType1(int x1 )
    {
        this.x1 = x1;
    }

    public static DemoType1 deserializeDemoType1(ByteBuf _buf)
    {
        return new DemoType1(_buf);
    }

    /**
     * 
     */
    public final int x1;

    public static final int ID = -367048296;

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
        + "x1:" + x1 + ","
        + "}";
    }
}
