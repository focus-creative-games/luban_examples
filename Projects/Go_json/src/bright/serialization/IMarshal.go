package serialization

type IMarshal interface {
	New() IMarshal
	Marshal(buf *ByteBuf)
	Unmarshal(buf *ByteBuf) error
}
