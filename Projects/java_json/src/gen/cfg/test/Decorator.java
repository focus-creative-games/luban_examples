
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg.test;

import luban.*;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;


public final class Decorator extends cfg.test.ItemBase {
    public Decorator(JsonObject _buf) { 
        super(_buf);
        duration = _buf.get("duration").getAsInt();
    }

    public static Decorator deserialize(JsonObject _buf) {
            return new cfg.test.Decorator(_buf);
    }

    public final int duration;

    public static final int __ID__ = -625155649;
    
    @Override
    public int getTypeId() { return __ID__; }

    @Override
    public String toString() {
        return "{ "
        + "(format_field_name __code_style field.name):" + id + ","
        + "(format_field_name __code_style field.name):" + name + ","
        + "(format_field_name __code_style field.name):" + desc + ","
        + "(format_field_name __code_style field.name):" + duration + ","
        + "}";
    }
}

