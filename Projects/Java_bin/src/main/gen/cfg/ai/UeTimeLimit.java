
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg.ai;

import luban.*;


public final class UeTimeLimit extends cfg.ai.Decorator {
    public UeTimeLimit(ByteBuf _buf) { 
        super(_buf);
        limitTime = _buf.readFloat();
    }

    public static UeTimeLimit deserialize(ByteBuf _buf) {
            return new cfg.ai.UeTimeLimit(_buf);
    }

    public final float limitTime;

    public static final int __ID__ = 338469720;
    
    @Override
    public int getTypeId() { return __ID__; }

    @Override
    public String toString() {
        return "{ "
        + "(format_field_name __code_style field.name):" + id + ","
        + "(format_field_name __code_style field.name):" + nodeName + ","
        + "(format_field_name __code_style field.name):" + flowAbortMode + ","
        + "(format_field_name __code_style field.name):" + limitTime + ","
        + "}";
    }
}

