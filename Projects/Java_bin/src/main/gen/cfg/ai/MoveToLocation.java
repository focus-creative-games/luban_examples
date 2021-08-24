
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.ai;

import bright.serialization.*;



public final class MoveToLocation extends  cfg.ai.Task 
{
    public MoveToLocation(ByteBuf _buf)
    { 
        super(_buf);
        location = _buf.readVector3();
        acceptableRadius = _buf.readFloat();
    }

    public MoveToLocation(int id, String node_name, java.util.ArrayList<cfg.ai.Decorator> decorators, java.util.ArrayList<cfg.ai.Service> services, boolean ignore_restart_self, bright.math.Vector3 location, float acceptable_radius )
    {
        super(id, node_name, decorators, services, ignore_restart_self);
        this.location = location;
        this.acceptableRadius = acceptable_radius;
    }

    public static MoveToLocation deserializeMoveToLocation(ByteBuf _buf)
    {
        return new MoveToLocation(_buf);
    }

    public final bright.math.Vector3 location;
    public final float acceptableRadius;

    public static final int ID = -969953113;

    @Override
    public int getTypeId() { return ID; }

    @Override
    public void serialize(ByteBuf os)
    {
        throw new UnsupportedOperationException();
    }

    @Override
    public void deserialize(ByteBuf os)
    {
        throw new UnsupportedOperationException();
    }

    public void resolve(java.util.HashMap<String, Object> _tables)
    {
        super.resolve(_tables);
    }

    @Override
    public String toString()
    {
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
