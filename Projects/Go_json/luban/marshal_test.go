package luban

import (
	"bytes"
	"testing"
)

func TestMarshal(t *testing.T) {
	buf := NewByteBuf(10)

	for i := 0; i < 2; i++ {
		x := i != 0
		buf.WriteBool(x)
		if v, err := buf.ReadBool(); err != nil || v != x {
			t.Fatalf("expect %v, get %v", x, v)
		}
		if buf.Size() != 0 {
			t.Fatalf("expect empty. but size:%v, x:%v", buf.Size(), x)
		}
	}

	for i := 0; i < 256; i = i*3/2 + 1 {
		x := byte(i)
		buf.WriteByte(x)
		if v, err := buf.ReadByte(); err != nil || v != x {
			t.Fatalf("expect %v, get %v", x, v)
		}
		if buf.Size() != 0 {
			t.Fatalf("expect empty. but size:%v, x:%v", buf.Size(), x)
		}
	}

	for i := 0; i < 0x10000; i = i*3/2 + 1 {
		x := int16(i)
		buf.WriteShort(x)
		if v, err := buf.ReadShort(); err != nil || v != x {
			t.Fatalf("expect %v, get %v", x, v)
		}
		if buf.Size() != 0 {
			t.Fatalf("expect empty. but size:%v, x:%v", buf.Size(), x)
		}
	}

	for i := 0; i < 0x10000; i = i*3/2 + 1 {
		x := int16(i)
		buf.WriteFshort(x)
		if v, err := buf.ReadFshort(); err != nil || v != x {
			t.Fatalf("expect %v, get %v", x, v)
		}
		if buf.Size() != 0 {
			t.Fatalf("expect empty. but size:%v, x:%v", buf.Size(), x)
		}
	}

	for i := 0; i < 0x1000000000; i = i*3/2 + 1 {
		x := int32(i)
		buf.WriteInt(x)
		if v, err := buf.ReadInt(); err != nil || v != x {
			t.Fatalf("expect %v, get %v", x, v)
		}
		if buf.Size() != 0 {
			t.Fatalf("expect empty. but size:%v, x:%v", buf.Size(), x)
		}
	}

	for i := 0; i < 0x1000000000; i = i*3/2 + 1 {
		x := int32(i)
		buf.WriteFint(x)
		if v, err := buf.ReadFint(); err != nil || v != x {
			t.Fatalf("expect %v, get %v", x, v)
		}
		if buf.Size() != 0 {
			t.Fatalf("expect empty. but size:%v, x:%v", buf.Size(), x)
		}
	}

	for i := 0; i < 0x100000000; i = i*3/2 + 1 {
		x := int(i)
		buf.WriteSize(x)
		if v, err := buf.ReadSize(); err != nil || v != x {
			t.Fatalf("expect %v, get %v", x, v)
		}
		if buf.Size() != 0 {
			t.Fatalf("expect empty. but size:%v, x:%v", buf.Size(), x)
		}
	}

	for i := 0; i < 0x100000000; i = i*3/2 + 1 {
		x := int32(i)
		buf.WriteSint(x)
		if v, err := buf.ReadSint(); err != nil || v != x {
			t.Fatalf("expect %v, get %v", x, v)
		}
		if buf.Size() != 0 {
			t.Fatalf("expect empty. but size:%v, x:%v", buf.Size(), x)
		}
	}

	for i := 0; i < 0x1000000000000000; i = i*3/2 + 1 {
		x := int64(i)
		buf.WriteLong(x)
		if v, err := buf.ReadLong(); err != nil || v != x {
			t.Fatalf("expect %v, get %v", x, v)
		}
		if buf.Size() != 0 {
			t.Fatalf("expect empty. but size:%v, x:%v", buf.Size(), x)
		}

		x = -x
		buf.WriteLong(x)
		if v, err := buf.ReadLong(); err != nil || v != x {
			t.Fatalf("expect %v, get %v", x, v)
		}
		if buf.Size() != 0 {
			t.Fatalf("expect empty. but size:%v, x:%v", buf.Size(), x)
		}
	}

	for i := 0; i < 0x100000000; i = i*3/2 + 1 {
		x := float32(i)
		buf.WriteFloat(x)
		if v, err := buf.ReadFloat(); err != nil || v != x {
			t.Fatalf("expect %v, get %v", x, v)
		}
		if buf.Size() != 0 {
			t.Fatalf("expect empty. but size:%v, x:%v", buf.Size(), x)
		}
	}
	for i := 0; i < 0x100000000; i = i*3/2 + 1 {
		x := float64(i)
		buf.WriteDouble(x)
		if v, err := buf.ReadDouble(); err != nil || v != x {
			t.Fatalf("expect %v, get %v", x, v)
		}
		if buf.Size() != 0 {
			t.Fatalf("expect empty. but size:%v, x:%v", buf.Size(), x)
		}
	}

	{
		x := "walon"
		buf.WriteString(x)
		if v, err := buf.ReadString(); err != nil || v != x {
			t.Fatalf("expect %v, get %v", x, v)
		}
		if buf.Size() != 0 {
			t.Fatalf("expect empty. but size:%v, x:%v", buf.Size(), x)
		}
	}

	{
		x := []byte{1, 2, 3}
		buf.WriteBytes(x)
		if v, err := buf.ReadBytes(); err != nil || !bytes.Equal(x, v) {
			t.Fatalf("expect %v, get %v", x, v)
		}
		if buf.Size() != 0 {
			t.Fatalf("expect empty. but size:%v, x:%v", buf.Size(), x)
		}
	}
	{
		x := []byte{1, 2, 3, 4}
		buf.WriteBytesWithoutSize(x)
		if v, err := buf.ReadFint(); err != nil || v != 0x04030201 {
			t.Fatalf("expect %v, get %v", x, v)
		}
		if buf.Size() != 0 {
			t.Fatalf("expect empty. but size:%v, x:%v", buf.Size(), x)
		}
	}

}
