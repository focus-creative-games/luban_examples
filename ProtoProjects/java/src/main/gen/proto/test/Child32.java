//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package proto.test;

import bright.serialization.*;



public final class Child32 extends proto.test.Child21 {


    public int b31;
    public int b32;

    public static final int __ID__ = 11;

    @Override
    public int getTypeId() { return __ID__; }

    @Override
    public void serialize(ByteBuf _buf) { 
        super.serialize(_buf);
        _buf.writeInt(b31);
        _buf.writeInt(b32);
    }

    @Override
    public void deserialize(ByteBuf _buf)
    {
        super.deserialize(_buf);
        b31 = _buf.readInt();
        b32 = _buf.readInt();
    }

    public static void serializeChild32(ByteBuf _buf, Child32 v) {
        v.serialize(_buf);
    }

    public static Child32 deserializeChild32(ByteBuf _buf) {
        Child32 v = new Child32();
        v.deserialize(_buf);
        return v;
    }

    @Override
    public String toString() {
        return "{ "
        + "a1:" + a1 + ","
        + "a24:" + a24 + ","
        + "b31:" + b31 + ","
        + "b32:" + b32 + ","
        + "}";
    }
}