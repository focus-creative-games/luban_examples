
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.blueprint;

import bright.serialization.*;



public final class ParamInfo extends  bright.serialization.AbstractBean 
{
    public ParamInfo(ByteBuf _buf)
    { 
        name = _buf.readString();
        type = _buf.readString();
        isRef = _buf.readBool();
    }

    public ParamInfo(String name, String type, boolean is_ref )
    {
        this.name = name;
        this.type = type;
        this.isRef = is_ref;
    }

    public static ParamInfo deserializeParamInfo(ByteBuf _buf)
    {
        return new ParamInfo(_buf);
    }

    public final String name;
    public final String type;
    public final boolean isRef;

    public static final int ID = -729799392;

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
        + "type:" + type + ","
        + "isRef:" + isRef + ","
        + "}";
    }
}
