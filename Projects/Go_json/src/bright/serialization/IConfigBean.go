package serialization

type IConfigBean interface {
	GetTypeId() int32
	Deserialize(buf map[int32]*interface{}) error
}
