
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.test;

import bright.serialization.*;



public final class DemoPrimitiveTypesTable extends  bright.serialization.AbstractBean 
{
    public DemoPrimitiveTypesTable(ByteBuf _buf)
    { 
        x1 = _buf.readBool();
        x2 = _buf.readByte();
        x3 = _buf.readShort();
        x4 = _buf.readInt();
        x5 = _buf.readLong();
        x6 = _buf.readFloat();
        x7 = _buf.readDouble();
        s1 = _buf.readString();
        s2 = _buf.readString();
        v2 = _buf.readVector2();
        v3 = _buf.readVector3();
        v4 = _buf.readVector4();
        t1 = _buf.readInt();
    }

    public DemoPrimitiveTypesTable(boolean x1, byte x2, short x3, int x4, long x5, float x6, double x7, String s1, String s2, bright.math.Vector2 v2, bright.math.Vector3 v3, bright.math.Vector4 v4, int t1 )
    {
        this.x1 = x1;
        this.x2 = x2;
        this.x3 = x3;
        this.x4 = x4;
        this.x5 = x5;
        this.x6 = x6;
        this.x7 = x7;
        this.s1 = s1;
        this.s2 = s2;
        this.v2 = v2;
        this.v3 = v3;
        this.v4 = v4;
        this.t1 = t1;
    }

    public static DemoPrimitiveTypesTable deserializeDemoPrimitiveTypesTable(ByteBuf _buf)
    {
        return new DemoPrimitiveTypesTable(_buf);
    }

    public final boolean x1;
    public final byte x2;
    public final short x3;
    public final int x4;
    public final long x5;
    public final float x6;
    public final double x7;
    public final String s1;
    public final String s2;
    public final bright.math.Vector2 v2;
    public final bright.math.Vector3 v3;
    public final bright.math.Vector4 v4;
    public final int t1;

    public static final int ID = -370934083;

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
        + "x2:" + x2 + ","
        + "x3:" + x3 + ","
        + "x4:" + x4 + ","
        + "x5:" + x5 + ","
        + "x6:" + x6 + ","
        + "x7:" + x7 + ","
        + "s1:" + s1 + ","
        + "s2:" + s2 + ","
        + "v2:" + v2 + ","
        + "v3:" + v3 + ","
        + "v4:" + v4 + ","
        + "t1:" + t1 + ","
        + "}";
    }
}
