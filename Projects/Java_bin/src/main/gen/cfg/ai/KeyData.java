
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.ai;

import bright.serialization.*;



public abstract class KeyData extends  bright.serialization.AbstractBean 
{
    public KeyData(ByteBuf _buf)
    { 
    }

    public KeyData()
    {
    }

    public static KeyData deserializeKeyData(ByteBuf _buf)
    {
        switch (_buf.readInt())
        {
            case cfg.ai.FloatKeyData.ID: return new cfg.ai.FloatKeyData(_buf);
            case cfg.ai.IntKeyData.ID: return new cfg.ai.IntKeyData(_buf);
            case cfg.ai.StringKeyData.ID: return new cfg.ai.StringKeyData(_buf);
            case cfg.ai.BlackboardKeyData.ID: return new cfg.ai.BlackboardKeyData(_buf);
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
    }

    @Override
    public String toString()
    {
        return "{ "
        + "}";
    }
}
