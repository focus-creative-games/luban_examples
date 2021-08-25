package bright.serialization;

public interface ISerializable {
    void serialize(ByteBuf bs);
    void deserialize(ByteBuf bs);
}
