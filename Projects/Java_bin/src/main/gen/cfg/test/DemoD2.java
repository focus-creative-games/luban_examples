
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg.test;

import bright.serialization.*;



public final class DemoD2 extends  cfg.test.DemoDynamic 
{
    public DemoD2(ByteBuf _buf)
    { 
        super(_buf);
        x2 = _buf.readInt();
    }

    public DemoD2(int x1, int x2 )
    {
        super(x1);
        this.x2 = x2;
    }

    public static DemoD2 deserializeDemoD2(ByteBuf _buf)
    {
        return new DemoD2(_buf);
    }

    public final int x2;

    public static final int ID = -2138341747;

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
        + "x1:" + x1 + ","
        + "x2:" + x2 + ","
        + "}";
    }
}

