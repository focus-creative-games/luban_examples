
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
public final class DefineFromExcel2 {
    public DefineFromExcel2(ByteBuf _buf) { 
        id = _buf.readInt();
        x1 = _buf.readBool();
        x5 = _buf.readLong();
        x6 = _buf.readFloat();
        x8 = _buf.readInt();
        x10 = _buf.readString();
        x13 = cfg.test.ETestQuality.valueOf(_buf.readInt());
        x14 = cfg.test.DemoDynamic.deserializeDemoDynamic(_buf);
        v2 = _buf.readVector2();
        t1 = _buf.readInt();
        {int n = Math.min(_buf.readSize(), _buf.size());k1 = new int[n];for(var i = 0 ; i < n ; i++) { int _e;_e = _buf.readInt(); k1[i] = _e;}}
        {int n = Math.min(_buf.readSize(), _buf.size());k8 = new java.util.HashMap<Integer, Integer>(n * 3 / 2);for(var i = 0 ; i < n ; i++) { Integer _k;  _k = _buf.readInt(); Integer _v;  _v = _buf.readInt();     k8.put(_k, _v);}}
        {int n = Math.min(_buf.readSize(), _buf.size());k9 = new java.util.ArrayList<cfg.test.DemoE2>(n);for(var i = 0 ; i < n ; i++) { cfg.test.DemoE2 _e;  _e = new cfg.test.DemoE2(_buf); k9.add(_e);}}
    }

    public DefineFromExcel2(int id, boolean x1, long x5, float x6, int x8, String x10, cfg.test.ETestQuality x13, cfg.test.DemoDynamic x14, bright.math.Vector2 v2, int t1, int[] k1, java.util.HashMap<Integer, Integer> k8, java.util.ArrayList<cfg.test.DemoE2> k9 ) {
        this.id = id;
        this.x1 = x1;
        this.x5 = x5;
        this.x6 = x6;
        this.x8 = x8;
        this.x10 = x10;
        this.x13 = x13;
        this.x14 = x14;
        this.v2 = v2;
        this.t1 = t1;
        this.k1 = k1;
        this.k8 = k8;
        this.k9 = k9;
    }


    /**
     * id的描述
     */
    public final int id;
    /**
     * 字段的描述
     */
    public final boolean x1;
    public final long x5;
    public final float x6;
    public final int x8;
    public final String x10;
    public final cfg.test.ETestQuality x13;
    public final cfg.test.DemoDynamic x14;
    public final bright.math.Vector2 v2;
    public final int t1;
    public final int[] k1;
    public final java.util.HashMap<Integer, Integer> k8;
    public final java.util.ArrayList<cfg.test.DemoE2> k9;


    public void resolve(java.util.HashMap<String, Object> _tables) {
        if (x14 != null) {x14.resolve(_tables);}
        for(cfg.test.DemoE2 _e : k9) { if (_e != null) _e.resolve(_tables); }
    }

    @Override
    public String toString() {
        return "{ "
        + "id:" + id + ","
        + "x1:" + x1 + ","
        + "x5:" + x5 + ","
        + "x6:" + x6 + ","
        + "x8:" + x8 + ","
        + "x10:" + x10 + ","
        + "x13:" + x13 + ","
        + "x14:" + x14 + ","
        + "v2:" + v2 + ","
        + "t1:" + t1 + ","
        + "k1:" + k1 + ","
        + "k8:" + k8 + ","
        + "k9:" + k9 + ","
        + "}";
    }
}
