
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.ai;

import bright.serialization.*;



public final class MoveToRandomLocation extends  cfg.ai.Task 
{
    public MoveToRandomLocation(ByteBuf _buf)
    { 
        super(_buf);
        originPositionKey = _buf.readString();
        radius = _buf.readFloat();
    }

    public MoveToRandomLocation(int id, String node_name, java.util.ArrayList<cfg.ai.Decorator> decorators, java.util.ArrayList<cfg.ai.Service> services, boolean ignore_restart_self, String origin_position_key, float radius )
    {
        super(id, node_name, decorators, services, ignore_restart_self);
        this.originPositionKey = origin_position_key;
        this.radius = radius;
    }

    public static MoveToRandomLocation deserializeMoveToRandomLocation(ByteBuf _buf)
    {
        return new MoveToRandomLocation(_buf);
    }

    public final String originPositionKey;
    public final float radius;

    public static final int ID = -2140042998;

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
        + "originPositionKey:" + originPositionKey + ","
        + "radius:" + radius + ","
        + "}";
    }
}
