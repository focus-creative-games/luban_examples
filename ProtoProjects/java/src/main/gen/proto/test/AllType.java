//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package proto.test;

import bright.serialization.*;



public final class AllType extends bright.serialization.AbstractBean {


    public boolean x1;
    public byte x2;
    public short x3;
    public short x4;
    public int x5;
    public int x6;
    public long x7;
    public long x8;
    public String a1;
    public byte[] a2;
    public proto.test.Simple a3;
    public proto.test.Dyn a4;
    public int[] b1;
    public proto.test.Simple[] b2;
    public proto.test.Dyn[] b3;
    public java.util.ArrayList<Integer> c1;
    public java.util.ArrayList<proto.test.Simple> c2;
    public java.util.ArrayList<proto.test.Dyn> c3;
    public java.util.HashSet<Integer> d1;
    public java.util.HashMap<Integer, Integer> e1;
    public java.util.HashMap<Integer, proto.test.Simple> e2;
    public java.util.HashMap<Integer, proto.test.Dyn> e3;

    public static final int __ID__ = 0;

    @Override
    public int getTypeId() { return __ID__; }

    @Override
    public void serialize(ByteBuf _buf) { 
        _buf.writeBool(x1);
        _buf.writeByte(x2);
        _buf.writeShort(x3);
        _buf.writeFshort(x4);
        _buf.writeInt(x5);
        _buf.writeFint(x6);
        _buf.writeLong(x7);
        _buf.writeFlong(x8);
        _buf.writeString(a1);
        _buf.writeBytes(a2);
        proto.test.Simple.serializeSimple(_buf, a3);
        proto.test.Dyn.serializeDyn(_buf, a4);
        { _buf.writeSize(b1.length); for(Integer _e : b1) { _buf.writeInt(_e); } }
        { _buf.writeSize(b2.length); for(proto.test.Simple _e : b2) { proto.test.Simple.serializeSimple(_buf, _e); } }
        { _buf.writeSize(b3.length); for(proto.test.Dyn _e : b3) { proto.test.Dyn.serializeDyn(_buf, _e); } }
        { _buf.writeSize(c1.size()); for(Integer _e : c1) { _buf.writeInt(_e); } }
        { _buf.writeSize(c2.size()); for(proto.test.Simple _e : c2) { proto.test.Simple.serializeSimple(_buf, _e); } }
        { _buf.writeSize(c3.size()); for(proto.test.Dyn _e : c3) { proto.test.Dyn.serializeDyn(_buf, _e); } }
        { _buf.writeSize(d1.size()); for(Integer _e : d1) { _buf.writeInt(_e); } }
        { _buf.writeSize(e1.size()); for(java.util.Map.Entry<Integer,Integer> _e : e1.entrySet()) { _buf.writeInt(_e.getKey()); _buf.writeInt(_e.getValue()); } }
        { _buf.writeSize(e2.size()); for(java.util.Map.Entry<Integer,proto.test.Simple> _e : e2.entrySet()) { _buf.writeInt(_e.getKey()); proto.test.Simple.serializeSimple(_buf, _e.getValue()); } }
        { _buf.writeSize(e3.size()); for(java.util.Map.Entry<Integer,proto.test.Dyn> _e : e3.entrySet()) { _buf.writeInt(_e.getKey()); proto.test.Dyn.serializeDyn(_buf, _e.getValue()); } }
    }

    @Override
    public void deserialize(ByteBuf _buf)
    {
        x1 = _buf.readBool();
        x2 = _buf.readByte();
        x3 = _buf.readShort();
        x4 = _buf.readFshort();
        x5 = _buf.readInt();
        x6 = _buf.readFint();
        x7 = _buf.readLong();
        x8 = _buf.readFlong();
        a1 = _buf.readString();
        a2 = _buf.readBytes();
        a3 = proto.test.Simple.deserializeSimple(_buf);
        a4 = proto.test.Dyn.deserializeDyn(_buf);
        {int n = Math.min(_buf.readSize(), _buf.size());b1 = new int[n];for(int i = 0 ; i < n ; i++) { int _e;_e = _buf.readInt(); b1[i] = _e;}}
        {int n = Math.min(_buf.readSize(), _buf.size());b2 = new proto.test.Simple[n];for(int i = 0 ; i < n ; i++) { proto.test.Simple _e;_e = proto.test.Simple.deserializeSimple(_buf); b2[i] = _e;}}
        {int n = Math.min(_buf.readSize(), _buf.size());b3 = new proto.test.Dyn[n];for(int i = 0 ; i < n ; i++) { proto.test.Dyn _e;_e = proto.test.Dyn.deserializeDyn(_buf); b3[i] = _e;}}
        {int n = Math.min(_buf.readSize(), _buf.size());c1 = new java.util.ArrayList<Integer>(n);for(int i = 0 ; i < n ; i++) { Integer _e;  _e = _buf.readInt(); c1.add(_e);}}
        {int n = Math.min(_buf.readSize(), _buf.size());c2 = new java.util.ArrayList<proto.test.Simple>(n);for(int i = 0 ; i < n ; i++) { proto.test.Simple _e;  _e = proto.test.Simple.deserializeSimple(_buf); c2.add(_e);}}
        {int n = Math.min(_buf.readSize(), _buf.size());c3 = new java.util.ArrayList<proto.test.Dyn>(n);for(int i = 0 ; i < n ; i++) { proto.test.Dyn _e;  _e = proto.test.Dyn.deserializeDyn(_buf); c3.add(_e);}}
        {int n = Math.min(_buf.readSize(), _buf.size());d1 = new java.util.HashSet<Integer>(n * 3 / 2);for(int i = 0 ; i < n ; i++) { Integer _e;  _e = _buf.readInt(); d1.add(_e);}}
        {int n = Math.min(_buf.readSize(), _buf.size());e1 = new java.util.HashMap<Integer, Integer>(n * 3 / 2);for(int i = 0 ; i < n ; i++) { Integer _k;  _k = _buf.readInt(); Integer _v;  _v = _buf.readInt();     e1.put(_k, _v);}}
        {int n = Math.min(_buf.readSize(), _buf.size());e2 = new java.util.HashMap<Integer, proto.test.Simple>(n * 3 / 2);for(int i = 0 ; i < n ; i++) { Integer _k;  _k = _buf.readInt(); proto.test.Simple _v;  _v = proto.test.Simple.deserializeSimple(_buf);     e2.put(_k, _v);}}
        {int n = Math.min(_buf.readSize(), _buf.size());e3 = new java.util.HashMap<Integer, proto.test.Dyn>(n * 3 / 2);for(int i = 0 ; i < n ; i++) { Integer _k;  _k = _buf.readInt(); proto.test.Dyn _v;  _v = proto.test.Dyn.deserializeDyn(_buf);     e3.put(_k, _v);}}
    }

    public static void serializeAllType(ByteBuf _buf, AllType v) {
        v.serialize(_buf);
    }

    public static AllType deserializeAllType(ByteBuf _buf) {
        AllType v = new AllType();
        v.deserialize(_buf);
        return v;
    }

    @Override
    public String toString() {
        return "{ "
        + "x1:" + x1 + ","
        + "x2:" + x2 + ","
        + "x3:" + x3 + ","
        + "x4:" + x4 + ","
        + "x5:" + x5 + ","
        + "x6:" + x6 + ","
        + "x7:" + x7 + ","
        + "x8:" + x8 + ","
        + "a1:" + a1 + ","
        + "a2:" + a2 + ","
        + "a3:" + a3 + ","
        + "a4:" + a4 + ","
        + "b1:" + b1 + ","
        + "b2:" + b2 + ","
        + "b3:" + b3 + ","
        + "c1:" + c1 + ","
        + "c2:" + c2 + ","
        + "c3:" + c3 + ","
        + "d1:" + d1 + ","
        + "e1:" + e1 + ","
        + "e2:" + e2 + ","
        + "e3:" + e3 + ","
        + "}";
    }
}