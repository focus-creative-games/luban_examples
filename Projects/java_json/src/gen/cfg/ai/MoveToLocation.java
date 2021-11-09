
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.ai;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;



public final class MoveToLocation extends cfg.ai.Task {
    public MoveToLocation(JsonObject __json__) { 
        super(__json__);
        { com.google.gson.JsonObject _json0_ = __json__.get("location").getAsJsonObject(); float __x; __x = _json0_.get("x").getAsFloat(); float __y; __y = _json0_.get("y").getAsFloat(); float __z; __z = _json0_.get("z").getAsFloat();  location = new bright.math.Vector3(__x, __y,__z); }
        acceptableRadius = __json__.get("acceptable_radius").getAsFloat();
    }

    public MoveToLocation(int id, String node_name, java.util.ArrayList<cfg.ai.Decorator> decorators, java.util.ArrayList<cfg.ai.Service> services, boolean ignore_restart_self, bright.math.Vector3 location, float acceptable_radius ) {
        super(id, node_name, decorators, services, ignore_restart_self);
        this.location = location;
        this.acceptableRadius = acceptable_radius;
    }

    public static MoveToLocation deserializeMoveToLocation(JsonObject __json__) {
        return new MoveToLocation(__json__);
    }

    public final bright.math.Vector3 location;
    public final float acceptableRadius;

    public static final int ID = -969953113;

    @Override
    public int getTypeId() { return ID; }

    @Override
    public void resolve(java.util.HashMap<String, Object> _tables) {
        super.resolve(_tables);
    }

    @Override
    public String toString() {
        return "{ "
        + "id:" + id + ","
        + "nodeName:" + nodeName + ","
        + "decorators:" + decorators + ","
        + "services:" + services + ","
        + "ignoreRestartSelf:" + ignoreRestartSelf + ","
        + "location:" + location + ","
        + "acceptableRadius:" + acceptableRadius + ","
        + "}";
    }
}
