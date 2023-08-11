package luban

import (
	"errors"
	"math"
)

var EmptyBytes []byte

var UnmarshalErr = errors.New("read not enough")

func init() {
	EmptyBytes = make([]byte, 0)
}

type ByteBuf struct {
	readerIndex int
	writerIndex int
	capacity    int
	bytes       []byte
}

func NewByteBuf(capacity int) *ByteBuf {
	v := &ByteBuf{}
	v.bytes = make([]byte, capacity, capacity)
	v.readerIndex = 0
	v.writerIndex = 0
	v.capacity = capacity
	return v
}

func WrapByteBuf(bytes []byte) *ByteBuf {
	v := &ByteBuf{}
	v.bytes = bytes
	v.readerIndex = 0
	v.writerIndex = len(bytes)
	v.capacity = len(bytes)
	return v
}

func (buf *ByteBuf) Replace(bytes []byte) {
	buf.bytes = bytes
	buf.readerIndex = 0
	buf.writerIndex = len(bytes)
	buf.capacity = len(bytes)
}

func (buf *ByteBuf) Clear() {
	buf.readerIndex = 0
	buf.writerIndex = 0
}

func (buf *ByteBuf) Size() int {
	return buf.writerIndex - buf.readerIndex
}

func (buf *ByteBuf) GetBytes() []byte {
	return buf.bytes
}

func (buf *ByteBuf) CopyRemainData() []byte {
	size := len(buf.bytes)
	if size > 0 {
		bs := make([]byte, size, size)
		copy(bs, buf.bytes[buf.readerIndex:buf.writerIndex])
		return bs
	} else {
		return EmptyBytes
	}
}

func (buf *ByteBuf) CalcNewCap(curSize int, needSize int) int {
	curSize *= 2
	if curSize < 16 {
		curSize = 16
	}
	for ; curSize < needSize; curSize *= 2 {
	}
	return curSize
}

func (buf *ByteBuf) EnsureWrite(remain int) {
	if buf.writerIndex+remain > buf.capacity {
		size := buf.Size()
		if size+remain <= buf.capacity {
			copy(buf.bytes, buf.bytes[buf.readerIndex:buf.writerIndex])
		} else {
			buf.capacity = buf.CalcNewCap(buf.capacity, size+remain)
			newBytes := make([]byte, buf.capacity, buf.capacity)
			copy(newBytes, buf.bytes[buf.readerIndex:buf.writerIndex])
			buf.bytes = newBytes
		}
		buf.writerIndex = size
		buf.readerIndex = 0
	}
}

func (buf *ByteBuf) ReadBool() (bool, error) {
	if buf.readerIndex < buf.writerIndex {
		x := buf.bytes[buf.readerIndex] != 0
		buf.readerIndex++
		return x, nil
	} else {
		return false, UnmarshalErr
	}
}

func (buf *ByteBuf) WriteBool(x bool) {
	buf.EnsureWrite(1)
	if x {
		buf.bytes[buf.writerIndex] = 1
	} else {
		buf.bytes[buf.writerIndex] = 0
	}
	buf.writerIndex++
}

func (buf *ByteBuf) ReadByte() (byte, error) {
	if buf.readerIndex < buf.writerIndex {
		x := buf.bytes[buf.readerIndex]
		buf.readerIndex++
		return x, nil
	} else {
		return 0, UnmarshalErr
	}
}

func (buf *ByteBuf) WriteByte(x byte) {
	buf.EnsureWrite(1)
	buf.bytes[buf.writerIndex] = x
	buf.writerIndex++
}

func (buf *ByteBuf) ReadShort() (int16, error) {
	if buf.readerIndex >= buf.writerIndex {
		return 0, UnmarshalErr
	}
	h := uint32(buf.bytes[buf.readerIndex])
	if h < 0x80 {
		buf.readerIndex++
		return int16(h), nil
	} else if h < 0xc0 {
		if buf.readerIndex+2 > buf.writerIndex {
			return 0, UnmarshalErr
		}
		x := ((h & 0x3f) << 8) | uint32(buf.bytes[buf.readerIndex+1])
		buf.readerIndex += 2
		return int16(x), nil
	} else if h == 0xff {
		if buf.readerIndex+3 > buf.writerIndex {
			return 0, UnmarshalErr
		}
		x := (uint32(buf.bytes[buf.readerIndex+1]) << 8) | uint32(buf.bytes[buf.readerIndex+2])
		buf.readerIndex += 3
		return int16(x), nil
	} else {
		return 0, UnmarshalErr
	}
}

func (buf *ByteBuf) WriteShort(x int16) {
	if x >= 0 {
		if x < 0x80 {
			buf.EnsureWrite(1)
			buf.bytes[buf.writerIndex] = byte(x)
			buf.writerIndex++
			return
		} else if x < 0x4000 {
			buf.EnsureWrite(2)
			buf.bytes[buf.writerIndex+1] = byte(x)
			buf.bytes[buf.writerIndex] = byte((x >> 8) | 0x80)
			buf.writerIndex += 2
			return
		}
	}
	buf.EnsureWrite(3)
	buf.bytes[buf.writerIndex] = 0xff
	buf.bytes[buf.writerIndex+2] = byte(x)
	buf.bytes[buf.writerIndex+1] = byte(x >> 8)
	buf.writerIndex += 3
}

func (buf *ByteBuf) ReadFshort() (int16, error) {
	if buf.readerIndex+2 > buf.writerIndex {
		return 0, UnmarshalErr
	}
	x := int(buf.bytes[buf.readerIndex]) | (int(buf.bytes[buf.readerIndex+1]) << 8)
	buf.readerIndex += 2
	return int16(x), nil
}

func (buf *ByteBuf) WriteFshort(x int16) {
	buf.EnsureWrite(2)
	buf.bytes[buf.writerIndex] = byte(x)
	buf.bytes[buf.writerIndex+1] = byte(x >> 8)
	buf.writerIndex += 2
}

func (buf *ByteBuf) ReadInt() (int32, error) {
	x, err := buf.ReadUint()
	return int32(x), err
}

func (buf *ByteBuf) WriteInt(x int32) {
	buf.WriteUint(uint32(x))
}

func (buf *ByteBuf) ReadUint() (uint32, error) {
	if buf.readerIndex >= buf.writerIndex {
		return 0, UnmarshalErr
	}
	h := uint32(buf.bytes[buf.readerIndex])
	if h < 0x80 {
		buf.readerIndex++
		return h, nil
	} else if h < 0xc0 {
		if buf.readerIndex+2 > buf.writerIndex {
			return 0, UnmarshalErr
		}
		x := ((h & 0x3f) << 8) | uint32(buf.bytes[buf.readerIndex+1])
		buf.readerIndex += 2
		return x, nil
	} else if h < 0xe0 {
		if buf.readerIndex+3 > buf.writerIndex {
			return 0, UnmarshalErr
		}
		x := ((h & 0x1f) << 16) | (uint32(buf.bytes[buf.readerIndex+1]) << 8) | uint32(buf.bytes[buf.readerIndex+2])
		buf.readerIndex += 3
		return x, nil
	} else if h < 0xf0 {
		if buf.readerIndex+4 > buf.writerIndex {
			return 0, UnmarshalErr
		}
		x := ((h & 0x0f) << 24) | (uint32(buf.bytes[buf.readerIndex+1]) << 16) | (uint32(buf.bytes[buf.readerIndex+2]) << 8) | uint32(buf.bytes[buf.readerIndex+3])
		buf.readerIndex += 4
		return x, nil
	} else {
		if buf.readerIndex+5 > buf.writerIndex {
			return 0, UnmarshalErr
		}
		x := (uint32(buf.bytes[buf.readerIndex+1]) << 24) | (uint32(buf.bytes[buf.readerIndex+2]) << 16) | (uint32(buf.bytes[buf.readerIndex+3]) << 8) | uint32(buf.bytes[buf.readerIndex+4])
		buf.readerIndex += 5
		return x, nil
	}
}

func (buf *ByteBuf) WriteUint(x uint32) {
	if x < 0x80 {
		buf.EnsureWrite(1)
		buf.bytes[buf.writerIndex] = byte(x)
		buf.writerIndex++
	} else if x < 0x4000 {
		buf.EnsureWrite(2)
		buf.bytes[buf.writerIndex+1] = byte(x)
		buf.bytes[buf.writerIndex] = byte((x >> 8) | 0x80)
		buf.writerIndex += 2
	} else if x < 0x200000 {
		buf.EnsureWrite(3)
		buf.bytes[buf.writerIndex+2] = byte(x)
		buf.bytes[buf.writerIndex+1] = byte(x >> 8)
		buf.bytes[buf.writerIndex] = byte((x >> 16) | 0xc0)
		buf.writerIndex += 3
	} else if x < 0x10000000 {
		buf.EnsureWrite(4)
		buf.bytes[buf.writerIndex+3] = byte(x)
		buf.bytes[buf.writerIndex+2] = byte(x >> 8)
		buf.bytes[buf.writerIndex+1] = byte(x >> 16)
		buf.bytes[buf.writerIndex] = byte((x >> 24) | 0xe0)
		buf.writerIndex += 4
	} else {
		buf.EnsureWrite(5)
		buf.bytes[buf.writerIndex] = 0xf0
		buf.bytes[buf.writerIndex+4] = byte(x)
		buf.bytes[buf.writerIndex+3] = byte(x >> 8)
		buf.bytes[buf.writerIndex+2] = byte(x >> 16)
		buf.bytes[buf.writerIndex+1] = byte(x >> 24)
		buf.writerIndex += 5
	}
}

func (buf *ByteBuf) ReadFint() (int32, error) {
	if buf.readerIndex+4 > buf.writerIndex {
		return 0, UnmarshalErr
	}
	x := int32(uint(buf.bytes[buf.readerIndex]) | (uint(buf.bytes[buf.readerIndex+1]) << 8) |
		(uint(buf.bytes[buf.readerIndex+2]) << 16) | (uint(buf.bytes[buf.readerIndex+3]) << 24))
	buf.readerIndex += 4
	return x, nil
}

func (buf *ByteBuf) WriteFint(x int32) {
	buf.EnsureWrite(4)
	buf.bytes[buf.writerIndex] = byte(x)
	buf.bytes[buf.writerIndex+1] = byte(x >> 8)
	buf.bytes[buf.writerIndex+2] = byte(x >> 16)
	buf.bytes[buf.writerIndex+3] = byte(x >> 24)
	buf.writerIndex += 4
}

func (buf *ByteBuf) ReadLong() (int64, error) {
	x, err := buf.ReadUlong()
	return int64(x), err
}

func (buf *ByteBuf) WriteLong(x int64) {
	buf.WriteUlong(uint64(x))
}

func (buf *ByteBuf) ReadUlong() (uint64, error) {
	if buf.readerIndex >= buf.writerIndex {
		return 0, UnmarshalErr
	}
	h := uint64(buf.bytes[buf.readerIndex])
	if h < 0x80 {
		buf.readerIndex++
		return h, nil
	} else if h < 0xc0 {
		if buf.readerIndex+2 > buf.writerIndex {
			return 0, UnmarshalErr
		}
		x := ((h & 0x3f) << 8) | uint64(buf.bytes[buf.readerIndex+1])
		buf.readerIndex += 2
		return x, nil
	} else if h < 0xe0 {
		if buf.readerIndex+3 > buf.writerIndex {
			return 0, UnmarshalErr
		}
		x := ((h & 0x1f) << 16) | (uint64(buf.bytes[buf.readerIndex+1]) << 8) | uint64(buf.bytes[buf.readerIndex+2])
		buf.readerIndex += 3
		return x, nil
	} else if h < 0xf0 {
		if buf.readerIndex+4 > buf.writerIndex {
			return 0, UnmarshalErr
		}
		x := ((h & 0x1f) << 24) | (uint64(buf.bytes[buf.readerIndex+1]) << 16) | (uint64(buf.bytes[buf.readerIndex+2]) << 8) |
			uint64(buf.bytes[buf.readerIndex+3])
		buf.readerIndex += 4
		return x, nil
	} else if h < 0xf8 {
		if buf.readerIndex+5 > buf.writerIndex {
			return 0, UnmarshalErr
		}
		x := ((h & 0x7) << 32) | (uint64(buf.bytes[buf.readerIndex+1]) << 24) | (uint64(buf.bytes[buf.readerIndex+2]) << 16) |
			(uint64(buf.bytes[buf.readerIndex+3]) << 8) | uint64(buf.bytes[buf.readerIndex+4])
		buf.readerIndex += 5
		return x, nil
	} else if h < 0xfc {
		if buf.readerIndex+6 > buf.writerIndex {
			return 0, UnmarshalErr
		}
		x := ((h & 0x3) << 40) | (uint64(buf.bytes[buf.readerIndex+1]) << 32) | (uint64(buf.bytes[buf.readerIndex+2]) << 24) |
			(uint64(buf.bytes[buf.readerIndex+3]) << 16) | (uint64(buf.bytes[buf.readerIndex+4]) << 8) |
			(uint64(buf.bytes[buf.readerIndex+5]))
		buf.readerIndex += 6
		return x, nil
	} else if h < 0xfe {
		if buf.readerIndex+7 > buf.writerIndex {
			return 0, UnmarshalErr
		}
		x := ((h & 0x1) << 48) | (uint64(buf.bytes[buf.readerIndex+1]) << 40) | (uint64(buf.bytes[buf.readerIndex+2]) << 32) |
			(uint64(buf.bytes[buf.readerIndex+3]) << 24) | (uint64(buf.bytes[buf.readerIndex+4]) << 16) |
			(uint64(buf.bytes[buf.readerIndex+5]) << 8) | (uint64(buf.bytes[buf.readerIndex+6]))
		buf.readerIndex += 7
		return x, nil
	} else if h < 0xff {
		if buf.readerIndex+8 > buf.writerIndex {
			return 0, UnmarshalErr
		}
		x := (uint64(buf.bytes[buf.readerIndex+1]) << 48) | (uint64(buf.bytes[buf.readerIndex+2]) << 40) |
			(uint64(buf.bytes[buf.readerIndex+3]) << 32) | (uint64(buf.bytes[buf.readerIndex+4]) << 24) |
			(uint64(buf.bytes[buf.readerIndex+5]) << 16) | (uint64(buf.bytes[buf.readerIndex+6]) << 8) |
			(uint64(buf.bytes[buf.readerIndex+7]))
		buf.readerIndex += 8
		return x, nil
	} else {
		if buf.readerIndex+9 > buf.writerIndex {
			return 0, UnmarshalErr
		}
		x := (uint64(buf.bytes[buf.readerIndex+1]) << 56) | (uint64(buf.bytes[buf.readerIndex+2]) << 48) |
			(uint64(buf.bytes[buf.readerIndex+3]) << 40) | (uint64(buf.bytes[buf.readerIndex+4]) << 32) |
			(uint64(buf.bytes[buf.readerIndex+5]) << 24) | (uint64(buf.bytes[buf.readerIndex+6]) << 16) |
			(uint64(buf.bytes[buf.readerIndex+7]) << 8) | (uint64(buf.bytes[buf.readerIndex+8]))
		buf.readerIndex += 9
		return x, nil
	}
}

func (buf *ByteBuf) WriteUlong(x uint64) {
	if x < 0x80 {
		buf.EnsureWrite(1)
		buf.bytes[buf.writerIndex] = byte(x)
		buf.writerIndex++
	} else if x < 0x4000 {
		buf.EnsureWrite(2)
		buf.bytes[buf.writerIndex+1] = byte(x)
		buf.bytes[buf.writerIndex] = byte((x >> 8) | 0x80)
		buf.writerIndex += 2
	} else if x < 0x200000 {
		buf.EnsureWrite(3)
		buf.bytes[buf.writerIndex+2] = byte(x)
		buf.bytes[buf.writerIndex+1] = byte(x >> 8)
		buf.bytes[buf.writerIndex] = byte((x >> 16) | 0xc0)
		buf.writerIndex += 3
	} else if x < 0x10000000 {
		buf.EnsureWrite(4)
		buf.bytes[buf.writerIndex+3] = byte(x)
		buf.bytes[buf.writerIndex+2] = byte(x >> 8)
		buf.bytes[buf.writerIndex+1] = byte(x >> 16)
		buf.bytes[buf.writerIndex] = byte((x >> 24) | 0xe0)
		buf.writerIndex += 4
	} else if x < 0x800000000 {
		buf.EnsureWrite(5)
		buf.bytes[buf.writerIndex+4] = byte(x)
		buf.bytes[buf.writerIndex+3] = byte(x >> 8)
		buf.bytes[buf.writerIndex+2] = byte(x >> 16)
		buf.bytes[buf.writerIndex+1] = byte(x >> 24)
		buf.bytes[buf.writerIndex] = byte((x >> 32) | 0xf0)
		buf.writerIndex += 5
	} else if x < 0x40000000000 {
		buf.EnsureWrite(6)
		buf.bytes[buf.writerIndex+5] = byte(x)
		buf.bytes[buf.writerIndex+4] = byte(x >> 8)
		buf.bytes[buf.writerIndex+3] = byte(x >> 16)
		buf.bytes[buf.writerIndex+2] = byte(x >> 24)
		buf.bytes[buf.writerIndex+1] = byte(x >> 32)
		buf.bytes[buf.writerIndex] = byte((x >> 40) | 0xf8)
		buf.writerIndex += 6
	} else if x < 0x200000000000 {
		buf.EnsureWrite(7)
		buf.bytes[buf.writerIndex+6] = byte(x)
		buf.bytes[buf.writerIndex+5] = byte(x >> 8)
		buf.bytes[buf.writerIndex+4] = byte(x >> 16)
		buf.bytes[buf.writerIndex+3] = byte(x >> 24)
		buf.bytes[buf.writerIndex+2] = byte(x >> 32)
		buf.bytes[buf.writerIndex+1] = byte(x >> 40)
		buf.bytes[buf.writerIndex] = byte((x >> 48) | 0xfc)
		buf.writerIndex += 7
	} else if x < 0x100000000000000 {
		buf.EnsureWrite(8)
		buf.bytes[buf.writerIndex+7] = byte(x)
		buf.bytes[buf.writerIndex+6] = byte(x >> 8)
		buf.bytes[buf.writerIndex+5] = byte(x >> 16)
		buf.bytes[buf.writerIndex+4] = byte(x >> 24)
		buf.bytes[buf.writerIndex+3] = byte(x >> 32)
		buf.bytes[buf.writerIndex+2] = byte(x >> 40)
		buf.bytes[buf.writerIndex+1] = byte(x >> 48)
		buf.bytes[buf.writerIndex] = byte((x >> 56) | 0xfe)
		buf.writerIndex += 8
	} else {
		buf.EnsureWrite(9)
		buf.bytes[buf.writerIndex+8] = byte(x)
		buf.bytes[buf.writerIndex+7] = byte(x >> 8)
		buf.bytes[buf.writerIndex+6] = byte(x >> 16)
		buf.bytes[buf.writerIndex+5] = byte(x >> 24)
		buf.bytes[buf.writerIndex+4] = byte(x >> 32)
		buf.bytes[buf.writerIndex+3] = byte(x >> 40)
		buf.bytes[buf.writerIndex+2] = byte(x >> 48)
		buf.bytes[buf.writerIndex+1] = byte(x >> 56)
		buf.bytes[buf.writerIndex] = 0xff
		buf.writerIndex += 9
	}
}

func (buf *ByteBuf) ReadFlong() (int64, error) {
	if buf.readerIndex+8 > buf.writerIndex {
		return 0, UnmarshalErr
	}
	x := (uint64(buf.bytes[buf.readerIndex+7]) << 56) | (uint64(buf.bytes[buf.readerIndex+6]) << 48) |
		(uint64(buf.bytes[buf.readerIndex+5]) << 40) | (uint64(buf.bytes[buf.readerIndex+4]) << 32) |
		(uint64(buf.bytes[buf.readerIndex+3]) << 24) | (uint64(buf.bytes[buf.readerIndex+2]) << 16) |
		(uint64(buf.bytes[buf.readerIndex+1]) << 8) | (uint64(buf.bytes[buf.readerIndex]))
	buf.readerIndex += 8
	return int64(x), nil
}

func (buf *ByteBuf) WriteFlong(x int64) {
	buf.EnsureWrite(8)
	buf.bytes[buf.writerIndex] = byte(x)
	buf.bytes[buf.writerIndex+1] = byte(x >> 8)
	buf.bytes[buf.writerIndex+2] = byte(x >> 16)
	buf.bytes[buf.writerIndex+3] = byte(x >> 24)
	buf.bytes[buf.writerIndex+4] = byte(x >> 32)
	buf.bytes[buf.writerIndex+5] = byte(x >> 40)
	buf.bytes[buf.writerIndex+6] = byte(x >> 48)
	buf.bytes[buf.writerIndex+7] = byte(x >> 56)
	buf.writerIndex += 8
}

func (buf *ByteBuf) ReadFloat() (float32, error) {
	if x, err := buf.ReadFint(); err == nil {
		return math.Float32frombits(uint32(x)), nil
	} else {
		return 0, err
	}
}

func (buf *ByteBuf) WriteFloat(x float32) {
	buf.WriteFint(int32(math.Float32bits(x)))
}

func (buf *ByteBuf) ReadDouble() (float64, error) {
	if x, err := buf.ReadFlong(); err == nil {
		return math.Float64frombits(uint64(x)), nil
	} else {
		return 0, err
	}
}

func (buf *ByteBuf) WriteDouble(x float64) {
	buf.WriteFlong(int64(math.Float64bits(x)))
}

func (buf *ByteBuf) ReadSize() (int, error) {
	x, err := buf.ReadUint()
	return int(x), err
}

func (buf *ByteBuf) WriteSize(x int) {
	buf.WriteUint(uint32(x))
}

// marshal int
// n -> (n << 1) ^ (n >> 31)
// Read
// (x >>> 1) ^ ((x << 31) >> 31)
// (x >>> 1) ^ -(n&1)
func (buf *ByteBuf) ReadSint() (int32, error) {
	if x, err := buf.ReadUint(); err == nil {
		return int32((x >> 1) ^ ((x & 1) << 31)), nil
	} else {
		return 0, err
	}
}

func (buf *ByteBuf) WriteSint(x int32) {
	buf.WriteUint((uint32(x) << 1) ^ (uint32(x) >> 31))
}

// marshal long
// n -> (n << 1) ^ (n >> 63)
// Read
// (x >>> 1) ^((x << 63) >> 63)
// (x >>> 1) ^ -(n&1L)
func (buf *ByteBuf) ReadSlong() (int64, error) {
	if x, err := buf.ReadUlong(); err == nil {
		return int64((x >> 1) ^ ((x & 1) << 63)), nil
	} else {
		return 0, err
	}
}

func (buf *ByteBuf) WriteSlong(x int64) {
	buf.WriteUlong((uint64(x) << 1) ^ (uint64(x) >> 31))
}

func (buf *ByteBuf) WriteString(x string) {
	bs := []byte(x)
	buf.WriteSize(len(bs))
	buf.WriteBytesWithoutSize(bs)
}

func (buf *ByteBuf) ReadString() (string, error) {
	if size, err := buf.ReadSize(); err == nil {
		if buf.readerIndex+size > buf.writerIndex {
			return "", UnmarshalErr
		}
		s := string(buf.bytes[buf.readerIndex : buf.readerIndex+size])
		buf.readerIndex += size
		return s, nil
	} else {
		return "", err
	}
}

func (buf *ByteBuf) ReadBytes() ([]byte, error) {
	if size, err := buf.ReadSize(); err == nil {
		if size == 0 {
			return EmptyBytes, nil
		} else if buf.readerIndex+size > buf.writerIndex {
			return nil, UnmarshalErr
		} else {
			bs := make([]byte, size)
			copy(bs, buf.bytes[buf.readerIndex:buf.readerIndex+size])
			buf.readerIndex += size
			return bs, nil
		}
	} else {
		return nil, err
	}
}

func (buf *ByteBuf) WriteBytes(x []byte) {
	size := len(x)
	buf.WriteSize(size)
	if size > 0 {
		buf.EnsureWrite(size)
		copy(buf.bytes[buf.writerIndex:], x)
		buf.writerIndex += size
	}
}

func (buf *ByteBuf) WriteBytesWithSize(x []byte) {
	buf.WriteBytes(x)
}

func (buf *ByteBuf) WriteBytesWithoutSize(x []byte) {
	size := len(x)
	buf.EnsureWrite(size)
	copy(buf.bytes[buf.writerIndex:], x)
	buf.writerIndex += size
}
