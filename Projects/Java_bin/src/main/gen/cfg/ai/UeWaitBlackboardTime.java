
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg.ai;

import luban.*;


public final class UeWaitBlackboardTime extends cfg.ai.Task {
    public UeWaitBlackboardTime(ByteBuf _buf) { 
        super(_buf);
        blackboardKey = _buf.readString();
    }

    public static UeWaitBlackboardTime deserialize(ByteBuf _buf) {
            return new cfg.ai.UeWaitBlackboardTime(_buf);
    }

    public final String blackboardKey;

    public static final int __ID__ = 1215378271;
    
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
        + "(format_field_name __code_style field.name):" + blackboardKey + ","
        + "}";
    }
}

