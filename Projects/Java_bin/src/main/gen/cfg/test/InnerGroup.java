
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.test;

import bright.serialization.*;



public final class InnerGroup extends  bright.serialization.AbstractBean 
{
    public InnerGroup(ByteBuf _buf)
    { 
        y1 = _buf.readInt();
        y2 = _buf.readInt();
        y3 = _buf.readInt();
        y4 = _buf.readInt();
    }

    public InnerGroup(int y1, int y2, int y3, int y4 )
    {
        this.y1 = y1;
        this.y2 = y2;
        this.y3 = y3;
        this.y4 = y4;
    }

    public static InnerGroup deserializeInnerGroup(ByteBuf _buf)
    {
        return new InnerGroup(_buf);
    }

    public final int y1;
    public final int y2;
    public final int y3;
    public final int y4;

    public static final int ID = -587873083;

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
        + "y1:" + y1 + ","
        + "y2:" + y2 + ","
        + "y3:" + y3 + ","
        + "y4:" + y4 + ","
        + "}";
    }
}
