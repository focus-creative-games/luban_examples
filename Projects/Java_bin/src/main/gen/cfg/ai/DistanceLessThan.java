
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg.ai;

import luban.*;


public final class DistanceLessThan extends cfg.ai.Decorator {
    public DistanceLessThan(ByteBuf _buf) { 
        super(_buf);
        actor1Key = _buf.readString();
        actor2Key = _buf.readString();
        distance = _buf.readFloat();
        reverseResult = _buf.readBool();
    }

    public static DistanceLessThan deserialize(ByteBuf _buf) {
            return new cfg.ai.DistanceLessThan(_buf);
    }

    public final String actor1Key;
    public final String actor2Key;
    public final float distance;
    public final boolean reverseResult;

    public static final int __ID__ = -1207170283;
    
    @Override
    public int getTypeId() { return __ID__; }

    @Override
    public String toString() {
        return "{ "
        + "(format_field_name __code_style field.name):" + id + ","
        + "(format_field_name __code_style field.name):" + nodeName + ","
        + "(format_field_name __code_style field.name):" + flowAbortMode + ","
        + "(format_field_name __code_style field.name):" + actor1Key + ","
        + "(format_field_name __code_style field.name):" + actor2Key + ","
        + "(format_field_name __code_style field.name):" + distance + ","
        + "(format_field_name __code_style field.name):" + reverseResult + ","
        + "}";
    }
}

