
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg.ai;

import luban.*;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;


public final class MoveToTarget extends cfg.ai.Task {
    public MoveToTarget(JsonObject _buf) { 
        super(_buf);
        targetActorKey = _buf.get("target_actor_key").getAsString();
        acceptableRadius = _buf.get("acceptable_radius").getAsFloat();
    }

    public static MoveToTarget deserialize(JsonObject _buf) {
            return new cfg.ai.MoveToTarget(_buf);
    }

    public final String targetActorKey;
    public final float acceptableRadius;

    public static final int __ID__ = 514987779;
    
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
        + "(format_field_name __code_style field.name):" + targetActorKey + ","
        + "(format_field_name __code_style field.name):" + acceptableRadius + ","
        + "}";
    }
}

