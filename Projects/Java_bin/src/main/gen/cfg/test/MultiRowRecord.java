
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg.test;

import luban.*;


public final class MultiRowRecord extends AbstractBean {
    public MultiRowRecord(ByteBuf _buf) { 
        id = _buf.readInt();
        name = _buf.readString();
        {int __n0 = Math.min(_buf.readSize(), _buf.size());oneRows = new java.util.ArrayList<cfg.test.MultiRowType1>(__n0);for(int __i0 = 0 ; __i0 < __n0 ; __i0++) { cfg.test.MultiRowType1 __e0;  __e0 = cfg.test.MultiRowType1.deserialize(_buf); oneRows.add(__e0);}}
        {int __n0 = Math.min(_buf.readSize(), _buf.size());multiRows1 = new java.util.ArrayList<cfg.test.MultiRowType1>(__n0);for(int __i0 = 0 ; __i0 < __n0 ; __i0++) { cfg.test.MultiRowType1 __e0;  __e0 = cfg.test.MultiRowType1.deserialize(_buf); multiRows1.add(__e0);}}
        {int __n0 = Math.min(_buf.readSize(), _buf.size());multiRows2 = new cfg.test.MultiRowType1[__n0];for(int __i0 = 0 ; __i0 < __n0 ; __i0++) { cfg.test.MultiRowType1 __e0;__e0 = cfg.test.MultiRowType1.deserialize(_buf); multiRows2[__i0] = __e0;}}
        {int __n0 = Math.min(_buf.readSize(), _buf.size());multiRows4 = new java.util.HashMap<Integer, cfg.test.MultiRowType2>(__n0 * 3 / 2);for(int __i0 = 0 ; __i0 < __n0 ; __i0++) { Integer __k0;  __k0 = _buf.readInt(); cfg.test.MultiRowType2 __v0;  __v0 = cfg.test.MultiRowType2.deserialize(_buf);     multiRows4.put(__k0, __v0);}}
        {int __n0 = Math.min(_buf.readSize(), _buf.size());multiRows5 = new java.util.ArrayList<cfg.test.MultiRowType3>(__n0);for(int __i0 = 0 ; __i0 < __n0 ; __i0++) { cfg.test.MultiRowType3 __e0;  __e0 = cfg.test.MultiRowType3.deserialize(_buf); multiRows5.add(__e0);}}
        {int __n0 = Math.min(_buf.readSize(), _buf.size());multiRows6 = new java.util.HashMap<Integer, cfg.test.MultiRowType2>(__n0 * 3 / 2);for(int __i0 = 0 ; __i0 < __n0 ; __i0++) { Integer __k0;  __k0 = _buf.readInt(); cfg.test.MultiRowType2 __v0;  __v0 = cfg.test.MultiRowType2.deserialize(_buf);     multiRows6.put(__k0, __v0);}}
        {int __n0 = Math.min(_buf.readSize(), _buf.size());multiRows7 = new java.util.HashMap<Integer, Integer>(__n0 * 3 / 2);for(int __i0 = 0 ; __i0 < __n0 ; __i0++) { Integer __k0;  __k0 = _buf.readInt(); Integer __v0;  __v0 = _buf.readInt();     multiRows7.put(__k0, __v0);}}
    }

    public static MultiRowRecord deserialize(ByteBuf _buf) {
            return new cfg.test.MultiRowRecord(_buf);
    }

    public final int id;
    public final String name;
    public final java.util.ArrayList<cfg.test.MultiRowType1> oneRows;
    public final java.util.ArrayList<cfg.test.MultiRowType1> multiRows1;
    public final cfg.test.MultiRowType1[] multiRows2;
    public final java.util.HashMap<Integer, cfg.test.MultiRowType2> multiRows4;
    public final java.util.ArrayList<cfg.test.MultiRowType3> multiRows5;
    public final java.util.HashMap<Integer, cfg.test.MultiRowType2> multiRows6;
    public final java.util.HashMap<Integer, Integer> multiRows7;

    public static final int __ID__ = -501249394;
    
    @Override
    public int getTypeId() { return __ID__; }

    @Override
    public String toString() {
        return "{ "
        + "id:" + id + ","
        + "name:" + name + ","
        + "oneRows:" + oneRows + ","
        + "multiRows1:" + multiRows1 + ","
        + "multiRows2:" + multiRows2 + ","
        + "multiRows4:" + multiRows4 + ","
        + "multiRows5:" + multiRows5 + ","
        + "multiRows6:" + multiRows6 + ","
        + "multiRows7:" + multiRows7 + ","
        + "}";
    }
}

