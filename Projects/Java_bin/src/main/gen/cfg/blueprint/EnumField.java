
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.blueprint;

import bright.serialization.*;



public final class EnumField extends  bright.serialization.AbstractBean 
{
    public EnumField(ByteBuf _buf)
    { 
        name = _buf.readString();
        value = _buf.readInt();
    }

    public EnumField(String name, int value )
    {
        this.name = name;
        this.value = value;
    }

    public static EnumField deserializeEnumField(ByteBuf _buf)
    {
        return new EnumField(_buf);
    }

    public final String name;
    public final int value;

    public static final int ID = 1830049470;

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
    }

    @Override
    public String toString()
    {
        return "{ "
        + "name:" + name + ","
        + "value:" + value + ","
        + "}";
    }
}
