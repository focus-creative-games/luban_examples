
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg.test;

import luban.*;


public final class Foo extends AbstractBean {
    public Foo(ByteBuf _buf) { 
        y1 = _buf.readInt();
        y2 = _buf.readInt();
        y3 = _buf.readInt();
    }

    public static Foo deserialize(ByteBuf _buf) {
            return new cfg.test.Foo(_buf);
    }

    public final int y1;
    public final int y2;
    public final int y3;

    public static final int __ID__ = -1147950774;
    
    @Override
    public int getTypeId() { return __ID__; }

    @Override
    public String toString() {
        return "{ "
        + "y1:" + y1 + ","
        + "y2:" + y2 + ","
        + "y3:" + y3 + ","
        + "}";
    }
}

