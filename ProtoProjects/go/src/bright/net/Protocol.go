package net

import "bright/serialization"

type Protocol interface {
	GetTypeId() int32
	Serialize(buf *serialization.ByteBuf)
	Deserialize(buf* serialization.ByteBuf) error
}
