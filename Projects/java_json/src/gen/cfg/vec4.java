
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg;

import luban.*;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;


public final class vec4 extends AbstractBean {
    public vec4(JsonObject _buf) { 
        x = _buf.get("x").getAsFloat();
        y = _buf.get("y").getAsFloat();
        z = _buf.get("z").getAsFloat();
        w = _buf.get("w").getAsFloat();
    }

    public static vec4 deserialize(JsonObject _buf) {
            return new cfg.vec4(_buf);
    }

    public final float x;
    public final float y;
    public final float z;
    public final float w;

    public static final int __ID__ = 3615520;
    
    @Override
    public int getTypeId() { return __ID__; }

    @Override
    public String toString() {
        return "{ "
        + "x:" + x + ","
        + "y:" + y + ","
        + "z:" + z + ","
        + "w:" + w + ","
        + "}";
    }
}

