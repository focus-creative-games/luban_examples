
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


public final class TestBeRef extends AbstractBean {
    public TestBeRef(JsonObject _buf) { 
        id = _buf.get("id").getAsInt();
        count = _buf.get("count").getAsInt();
    }

    public static TestBeRef deserialize(JsonObject _buf) {
            return new cfg.test.TestBeRef(_buf);
    }

    public final int id;
    public final int count;

    public static final int __ID__ = 1934403938;
    
    @Override
    public int getTypeId() { return __ID__; }

    @Override
    public String toString() {
        return "{ "
        + "(format_field_name __code_style field.name):" + id + ","
        + "(format_field_name __code_style field.name):" + count + ","
        + "}";
    }
}

