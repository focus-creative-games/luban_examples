
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.ai;

import bright.serialization.*;



public abstract class Service extends  cfg.ai.Node 
{
    public Service(ByteBuf _buf)
    { 
        super(_buf);
    }

    public Service(int id, String node_name )
    {
        super(id, node_name);
    }

    public static Service deserializeService(ByteBuf _buf)
    {
        switch (_buf.readInt())
        {
            case cfg.ai.UeSetDefaultFocus.ID: return new cfg.ai.UeSetDefaultFocus(_buf);
            case cfg.ai.ExecuteTimeStatistic.ID: return new cfg.ai.ExecuteTimeStatistic(_buf);
            case cfg.ai.ChooseTarget.ID: return new cfg.ai.ChooseTarget(_buf);
            case cfg.ai.KeepFaceTarget.ID: return new cfg.ai.KeepFaceTarget(_buf);
            case cfg.ai.GetOwnerPlayer.ID: return new cfg.ai.GetOwnerPlayer(_buf);
            case cfg.ai.UpdateDailyBehaviorProps.ID: return new cfg.ai.UpdateDailyBehaviorProps(_buf);
            default: throw new SerializationException();
        }
    }



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
        + "}";
    }
}
