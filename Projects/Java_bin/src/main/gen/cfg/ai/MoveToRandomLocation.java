
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg.ai;

import luban.*;


public final class MoveToRandomLocation extends cfg.ai.Task {
    public MoveToRandomLocation(ByteBuf _buf) { 
        super(_buf);
        originPositionKey = _buf.readString();
        radius = _buf.readFloat();
    }

    public static MoveToRandomLocation deserialize(ByteBuf _buf) {
            return new cfg.ai.MoveToRandomLocation(_buf);
    }

    public final String originPositionKey;
    public final float radius;

    public static final int __ID__ = -2140042998;
    
    @Override
    public int getTypeId() { return __ID__; }

    @Override
    public String toString() {
        return "{ "
        + "(format_field_name __code_style field.name):" + id + ","
        + "(format_field_name __code_style field.name):" + nodeName + ","
        + "(format_field_name __code_style field.name):" + decorators + ","
        + "(format_field_name __code_style field.name):" + services + ","
        + "(format_field_name __code_style field.name):" + ignoreRestartSelf + ","
        + "(format_field_name __code_style field.name):" + originPositionKey + ","
        + "(format_field_name __code_style field.name):" + radius + ","
        + "}";
    }
}

