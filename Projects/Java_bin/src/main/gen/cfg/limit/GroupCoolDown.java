
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.limit;

import bright.serialization.*;



public final class GroupCoolDown extends  cfg.limit.LimitBase 
{
    public GroupCoolDown(ByteBuf _buf)
    { 
        super(_buf);
        groupId = _buf.readInt();
        duration = _buf.readInt();
    }

    public GroupCoolDown(int group_id, int duration )
    {
        super();
        this.groupId = group_id;
        this.duration = duration;
    }

    public static GroupCoolDown deserializeGroupCoolDown(ByteBuf _buf)
    {
        return new GroupCoolDown(_buf);
    }

    public final int groupId;
    public final int duration;

    public static final int ID = 394328599;

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
        + "groupId:" + groupId + ","
        + "duration:" + duration + ","
        + "}";
    }
}
