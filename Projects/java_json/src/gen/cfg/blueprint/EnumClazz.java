
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.blueprint;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;



public final class EnumClazz extends cfg.blueprint.Clazz {
    public EnumClazz(JsonObject __json__) { 
        super(__json__);
        { com.google.gson.JsonArray _json0_ = __json__.get("enums").getAsJsonArray(); enums = new java.util.ArrayList<cfg.blueprint.EnumField>(_json0_.size()); for(JsonElement __e : _json0_) { cfg.blueprint.EnumField __v;  __v = new cfg.blueprint.EnumField(__e.getAsJsonObject());  enums.add(__v); }   }
    }

    public EnumClazz(String name, String desc, java.util.ArrayList<cfg.blueprint.Clazz> parents, java.util.ArrayList<cfg.blueprint.Method> methods, java.util.ArrayList<cfg.blueprint.EnumField> enums ) {
        super(name, desc, parents, methods);
        this.enums = enums;
    }

    public static EnumClazz deserializeEnumClazz(JsonObject __json__) {
        return new EnumClazz(__json__);
    }

    public final java.util.ArrayList<cfg.blueprint.EnumField> enums;

    public static final int ID = 1827364892;

    @Override
    public int getTypeId() { return ID; }

    @Override
    public void resolve(java.util.HashMap<String, Object> _tables) {
        super.resolve(_tables);
        for(cfg.blueprint.EnumField _e : enums) { if (_e != null) _e.resolve(_tables); }
    }

    @Override
    public String toString() {
        return "{ "
        + "name:" + name + ","
        + "desc:" + desc + ","
        + "parents:" + parents + ","
        + "methods:" + methods + ","
        + "enums:" + enums + ","
        + "}";
    }
}
