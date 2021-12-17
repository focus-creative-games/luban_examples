package serialization

type ISerializable interface {
	GetTypeId() int32
	Serialize(buf *ByteBuf)
	Deserialize(buf *ByteBuf) error
}
