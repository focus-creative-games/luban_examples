
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


public final class UeCooldown extends cfg.ai.Decorator {
    public UeCooldown(JsonObject _buf) { 
        super(_buf);
        cooldownTime = _buf.get("cooldown_time").getAsFloat();
    }

    public static UeCooldown deserialize(JsonObject _buf) {
            return new cfg.ai.UeCooldown(_buf);
    }

    public final float cooldownTime;

    public static final int __ID__ = -951439423;
    
    @Override
    public int getTypeId() { return __ID__; }

    @Override
    public String toString() {
        return "{ "
        + "id:" + id + ","
        + "nodeName:" + nodeName + ","
        + "flowAbortMode:" + flowAbortMode + ","
        + "cooldownTime:" + cooldownTime + ","
        + "}";
    }
}

