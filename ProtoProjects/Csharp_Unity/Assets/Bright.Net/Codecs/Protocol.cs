using System;
using Bright.Serialization;

namespace Bright.Net.Codecs
{
    public abstract class Protocol : ISerializable, ITypeId, ICloneable
    {
        public abstract object Clone();

        public abstract int GetTypeId();

        public abstract void Serialize(ByteBuf _buf);

        public abstract void Deserialize(ByteBuf _buf);

        public abstract void Reset();
    }

    public delegate Protocol ProtocolCreator();
}
