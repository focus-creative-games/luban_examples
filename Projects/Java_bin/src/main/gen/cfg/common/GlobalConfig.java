
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg.common;

import luban.*;


public final class GlobalConfig extends AbstractBean {
    public GlobalConfig(ByteBuf _buf) { 
        x1 = _buf.readInt();
        x2 = _buf.readInt();
        x3 = _buf.readInt();
        x4 = _buf.readInt();
        x5 = _buf.readInt();
        x6 = _buf.readInt();
        {int __n0 = Math.min(_buf.readSize(), _buf.size());x7 = new java.util.ArrayList<Integer>(__n0);for(int __i0 = 0 ; __i0 < __n0 ; __i0++) { Integer __e0;  __e0 = _buf.readInt(); x7.add(__e0);}}
    }

    public static GlobalConfig deserialize(ByteBuf _buf) {
            return new cfg.common.GlobalConfig(_buf);
    }

    /**
     * 背包容量
     */
    public final int x1;
    public final int x2;
    public final int x3;
    public final int x4;
    public final int x5;
    public final int x6;
    public final java.util.ArrayList<Integer> x7;

    public static final int __ID__ = -848234488;
    
    @Override
    public int getTypeId() { return __ID__; }

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
        + "}";
    }
}

