
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.test;

import bright.serialization.*;



public final class TestRef {
    public TestRef(ByteBuf _buf) { 
        id = _buf.readInt();
        x1 = _buf.readInt();
        x12 = _buf.readInt();
        x2 = _buf.readInt();
        {int n = Math.min(_buf.readSize(), _buf.size());a1 = new int[n];for(int i = 0 ; i < n ; i++) { int _e;_e = _buf.readInt(); a1[i] = _e;}}
        {int n = Math.min(_buf.readSize(), _buf.size());a2 = new int[n];for(int i = 0 ; i < n ; i++) { int _e;_e = _buf.readInt(); a2[i] = _e;}}
        {int n = Math.min(_buf.readSize(), _buf.size());b1 = new java.util.ArrayList<Integer>(n);for(int i = 0 ; i < n ; i++) { Integer _e;  _e = _buf.readInt(); b1.add(_e);}}
        {int n = Math.min(_buf.readSize(), _buf.size());b2 = new java.util.ArrayList<Integer>(n);for(int i = 0 ; i < n ; i++) { Integer _e;  _e = _buf.readInt(); b2.add(_e);}}
        {int n = Math.min(_buf.readSize(), _buf.size());c1 = new java.util.HashSet<Integer>(n * 3 / 2);for(int i = 0 ; i < n ; i++) { Integer _e;  _e = _buf.readInt(); c1.add(_e);}}
        {int n = Math.min(_buf.readSize(), _buf.size());c2 = new java.util.HashSet<Integer>(n * 3 / 2);for(int i = 0 ; i < n ; i++) { Integer _e;  _e = _buf.readInt(); c2.add(_e);}}
        {int n = Math.min(_buf.readSize(), _buf.size());d1 = new java.util.HashMap<Integer, Integer>(n * 3 / 2);for(int i = 0 ; i < n ; i++) { Integer _k;  _k = _buf.readInt(); Integer _v;  _v = _buf.readInt();     d1.put(_k, _v);}}
        {int n = Math.min(_buf.readSize(), _buf.size());d2 = new java.util.HashMap<Integer, Integer>(n * 3 / 2);for(int i = 0 ; i < n ; i++) { Integer _k;  _k = _buf.readInt(); Integer _v;  _v = _buf.readInt();     d2.put(_k, _v);}}
        e1 = _buf.readInt();
        e2 = _buf.readLong();
        e3 = _buf.readString();
        f1 = _buf.readInt();
        f2 = _buf.readLong();
        f3 = _buf.readString();
    }

    public TestRef(int id, int x1, int x1_2, int x2, int[] a1, int[] a2, java.util.ArrayList<Integer> b1, java.util.ArrayList<Integer> b2, java.util.HashSet<Integer> c1, java.util.HashSet<Integer> c2, java.util.HashMap<Integer, Integer> d1, java.util.HashMap<Integer, Integer> d2, int e1, long e2, String e3, int f1, long f2, String f3 ) {
        this.id = id;
        this.x1 = x1;
        this.x12 = x1_2;
        this.x2 = x2;
        this.a1 = a1;
        this.a2 = a2;
        this.b1 = b1;
        this.b2 = b2;
        this.c1 = c1;
        this.c2 = c2;
        this.d1 = d1;
        this.d2 = d2;
        this.e1 = e1;
        this.e2 = e2;
        this.e3 = e3;
        this.f1 = f1;
        this.f2 = f2;
        this.f3 = f3;
    }


    public final int id;
    public final int x1;
    public cfg.test.TestBeRef x1_Ref;
    public final int x12;
    public final int x2;
    public cfg.test.TestBeRef x2_Ref;
    public final int[] a1;
    public final int[] a2;
    public final java.util.ArrayList<Integer> b1;
    public final java.util.ArrayList<Integer> b2;
    public final java.util.HashSet<Integer> c1;
    public final java.util.HashSet<Integer> c2;
    public final java.util.HashMap<Integer, Integer> d1;
    public final java.util.HashMap<Integer, Integer> d2;
    public final int e1;
    public final long e2;
    public final String e3;
    public final int f1;
    public final long f2;
    public final String f3;


    public void resolve(java.util.HashMap<String, Object> _tables) {
        this.x1_Ref = ((cfg.test.TbTestBeRef)_tables.get("test.TbTestBeRef")).get(x1);
        this.x2_Ref = ((cfg.test.TbTestBeRef)_tables.get("test.TbTestBeRef")).get(x2);
    }

    @Override
    public String toString() {
        return "{ "
        + "id:" + id + ","
        + "x1:" + x1 + ","
        + "x12:" + x12 + ","
        + "x2:" + x2 + ","
        + "a1:" + a1 + ","
        + "a2:" + a2 + ","
        + "b1:" + b1 + ","
        + "b2:" + b2 + ","
        + "c1:" + c1 + ","
        + "c2:" + c2 + ","
        + "d1:" + d1 + ","
        + "d2:" + d2 + ","
        + "e1:" + e1 + ","
        + "e2:" + e2 + ","
        + "e3:" + e3 + ","
        + "f1:" + f1 + ","
        + "f2:" + f2 + ","
        + "f3:" + f3 + ","
        + "}";
    }
}
