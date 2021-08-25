
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.condition;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;



public final class MinMaxLevel extends cfg.condition.BoolRoleCondition {
    public MinMaxLevel(JsonObject __json__) { 
        super(__json__);
        min = __json__.get("min").getAsInt();
        max = __json__.get("max").getAsInt();
    }

    public MinMaxLevel(int min, int max ) {
        super();
        this.min = min;
        this.max = max;
    }

    public static MinMaxLevel deserializeMinMaxLevel(JsonObject __json__) {
        return new MinMaxLevel(__json__);
    }

    public final int min;
    public final int max;

    public static final int ID = 907499647;

    @Override
    public int getTypeId() { return ID; }

    @Override
    public void resolve(java.util.HashMap<String, Object> _tables) {
        super.resolve(_tables);
    }

    @Override
    public String toString() {
        return "{ "
        + "min:" + min + ","
        + "max:" + max + ","
        + "}";
    }
}