
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.test;

import bright.serialization.*;



public final class DemoType2 extends  bright.serialization.AbstractBean 
{
    public DemoType2(ByteBuf _buf)
    { 
        x4 = _buf.readInt();
        x1 = _buf.readBool();
        x2 = _buf.readByte();
        x3 = _buf.readShort();
        x5 = _buf.readLong();
        x6 = _buf.readFloat();
        x7 = _buf.readDouble();
        x80 = _buf.readFshort();
        x8 = _buf.readFint();
        x9 = _buf.readFlong();
        x10 = _buf.readString();
        x12 = cfg.test.DemoType1.deserializeDemoType1(_buf);
        x13 = cfg.test.DemoEnum.valueOf(_buf.readInt());
        x14 = cfg.test.DemoDynamic.deserializeDemoDynamic(_buf);
        s1 = _buf.readString();
        v2 = _buf.readVector2();
        v3 = _buf.readVector3();
        v4 = _buf.readVector4();
        t1 = _buf.readInt();
        {int n = Math.min(_buf.readSize(), _buf.size());k1 = new int[n];for(var i = 0 ; i < n ; i++) { int _e;_e = _buf.readInt(); k1[i] = _e;}}
        {int n = Math.min(_buf.readSize(), _buf.size());k2 = new java.util.ArrayList<Integer>(n);for(var i = 0 ; i < n ; i++) { Integer _e;  _e = _buf.readInt(); k2.add(_e);}}
        {int n = Math.min(_buf.readSize(), _buf.size());k5 = new java.util.HashSet<Integer>(n * 3 / 2);for(var i = 0 ; i < n ; i++) { Integer _e;  _e = _buf.readInt(); k5.add(_e);}}
        {int n = Math.min(_buf.readSize(), _buf.size());k8 = new java.util.HashMap<Integer, Integer>(n * 3 / 2);for(var i = 0 ; i < n ; i++) { Integer _k;  _k = _buf.readInt(); Integer _v;  _v = _buf.readInt();     k8.put(_k, _v);}}
        {int n = Math.min(_buf.readSize(), _buf.size());k9 = new java.util.ArrayList<cfg.test.DemoE2>(n);for(var i = 0 ; i < n ; i++) { cfg.test.DemoE2 _e;  _e = cfg.test.DemoE2.deserializeDemoE2(_buf); k9.add(_e);}}
        {int n = Math.min(_buf.readSize(), _buf.size());k15 = new cfg.test.DemoDynamic[n];for(var i = 0 ; i < n ; i++) { cfg.test.DemoDynamic _e;_e = cfg.test.DemoDynamic.deserializeDemoDynamic(_buf); k15[i] = _e;}}
    }

    public DemoType2(int x4, boolean x1, byte x2, short x3, long x5, float x6, double x7, short x8_0, int x8, long x9, String x10, cfg.test.DemoType1 x12, cfg.test.DemoEnum x13, cfg.test.DemoDynamic x14, String s1, bright.math.Vector2 v2, bright.math.Vector3 v3, bright.math.Vector4 v4, int t1, int[] k1, java.util.ArrayList<Integer> k2, java.util.HashSet<Integer> k5, java.util.HashMap<Integer, Integer> k8, java.util.ArrayList<cfg.test.DemoE2> k9, cfg.test.DemoDynamic[] k15 )
    {
        this.x4 = x4;
        this.x1 = x1;
        this.x2 = x2;
        this.x3 = x3;
        this.x5 = x5;
        this.x6 = x6;
        this.x7 = x7;
        this.x80 = x8_0;
        this.x8 = x8;
        this.x9 = x9;
        this.x10 = x10;
        this.x12 = x12;
        this.x13 = x13;
        this.x14 = x14;
        this.s1 = s1;
        this.v2 = v2;
        this.v3 = v3;
        this.v4 = v4;
        this.t1 = t1;
        this.k1 = k1;
        this.k2 = k2;
        this.k5 = k5;
        this.k8 = k8;
        this.k9 = k9;
        this.k15 = k15;
    }

    public static DemoType2 deserializeDemoType2(ByteBuf _buf)
    {
        return new DemoType2(_buf);
    }

    public final int x4;
    public final boolean x1;
    public final byte x2;
    public final short x3;
    public cfg.test.DemoType2 x3_Ref;
    public final long x5;
    public final float x6;
    public final double x7;
    public final short x80;
    public final int x8;
    public final long x9;
    public final String x10;
    public final cfg.test.DemoType1 x12;
    public final cfg.test.DemoEnum x13;
    public final cfg.test.DemoDynamic x14;
    public final String s1;
    public final bright.math.Vector2 v2;
    public final bright.math.Vector3 v3;
    public final bright.math.Vector4 v4;
    public final int t1;
    public final int[] k1;
    public final java.util.ArrayList<Integer> k2;
    public final java.util.HashSet<Integer> k5;
    public final java.util.HashMap<Integer, Integer> k8;
    public final java.util.ArrayList<cfg.test.DemoE2> k9;
    public final cfg.test.DemoDynamic[] k15;

    public static final int ID = -367048295;

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
            this.x3_Ref = ((cfg.test.TbFullTypes)_tables.get("test.TbFullTypes")).get(x3);
            if (x12 != null) {x12.resolve(_tables);}
            if (x14 != null) {x14.resolve(_tables);}
            for(cfg.test.DemoE2 _e : k9) { if (_e != null) _e.resolve(_tables); }
            for(cfg.test.DemoDynamic _e : k15) { if (_e != null) _e.resolve(_tables); }
    }

    @Override
    public String toString()
    {
        return "{ "
        + "x4:" + x4 + ","
        + "x1:" + x1 + ","
        + "x2:" + x2 + ","
        + "x3:" + x3 + ","
        + "x5:" + x5 + ","
        + "x6:" + x6 + ","
        + "x7:" + x7 + ","
        + "x80:" + x80 + ","
        + "x8:" + x8 + ","
        + "x9:" + x9 + ","
        + "x10:" + x10 + ","
        + "x12:" + x12 + ","
        + "x13:" + x13 + ","
        + "x14:" + x14 + ","
        + "s1:" + s1 + ","
        + "v2:" + v2 + ","
        + "v3:" + v3 + ","
        + "v4:" + v4 + ","
        + "t1:" + t1 + ","
        + "k1:" + k1 + ","
        + "k2:" + k2 + ","
        + "k5:" + k5 + ","
        + "k8:" + k8 + ","
        + "k9:" + k9 + ","
        + "k15:" + k15 + ","
        + "}";
    }
}
