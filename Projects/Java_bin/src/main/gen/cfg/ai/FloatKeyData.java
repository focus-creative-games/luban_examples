
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg.ai;

import luban.*;


public final class FloatKeyData extends cfg.ai.KeyData {
    public FloatKeyData(ByteBuf _buf) { 
        super(_buf);
        value = _buf.readFloat();
    }

    public static FloatKeyData deserialize(ByteBuf _buf) {
            return new cfg.ai.FloatKeyData(_buf);
    }

    public final float value;

    public static final int __ID__ = -719747885;
    
    @Override
    public int getTypeId() { return __ID__; }

    @Override
    public String toString() {
        return "{ "
        + "value:" + value + ","
        + "}";
    }
}

