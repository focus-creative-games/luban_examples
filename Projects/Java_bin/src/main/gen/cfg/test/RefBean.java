
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg.test;

import luban.*;


public final class RefBean extends cfg.test.RefDynamicBase {
    public RefBean(ByteBuf _buf) { 
        super(_buf);
        {int __n0 = Math.min(_buf.readSize(), _buf.size());arr = new java.util.ArrayList<Integer>(__n0);for(int __i0 = 0 ; __i0 < __n0 ; __i0++) { Integer __e0;  __e0 = _buf.readInt(); arr.add(__e0);}}
    }

    public static RefBean deserialize(ByteBuf _buf) {
            return new cfg.test.RefBean(_buf);
    }

    public final java.util.ArrayList<Integer> arr;

    public static final int __ID__ = 1963260263;
    
    @Override
    public int getTypeId() { return __ID__; }

    @Override
    public String toString() {
        return "{ "
        + "x:" + x + ","
        + "arr:" + arr + ","
        + "}";
    }
}

