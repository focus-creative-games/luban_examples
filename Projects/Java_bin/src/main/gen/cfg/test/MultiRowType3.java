
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg.test;

import luban.*;


public final class MultiRowType3 extends AbstractBean {
    public MultiRowType3(ByteBuf _buf) { 
        id = _buf.readInt();
        {int __n0 = Math.min(_buf.readSize(), _buf.size());items = new java.util.ArrayList<cfg.test.MultiRowType1>(__n0);for(int __i0 = 0 ; __i0 < __n0 ; __i0++) { cfg.test.MultiRowType1 __e0;  __e0 = cfg.test.MultiRowType1.deserialize(_buf); items.add(__e0);}}
    }

    public static MultiRowType3 deserialize(ByteBuf _buf) {
            return new cfg.test.MultiRowType3(_buf);
    }

    public final int id;
    public final java.util.ArrayList<cfg.test.MultiRowType1> items;

    public static final int __ID__ = 540474972;
    
    @Override
    public int getTypeId() { return __ID__; }

    @Override
    public String toString() {
        return "{ "
        + "id:" + id + ","
        + "items:" + items + ","
        + "}";
    }
}

