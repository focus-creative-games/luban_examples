package luban;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Stack;

public class ByteBuf {

    public static final byte[] EMPTY_BYTES = new byte[0];
    private static final Charset MARSHAL_CHARSET = StandardCharsets.UTF_8;
    private byte[] data;
    private int beginPos;
    private int endPos;
    private int capacity;

    public ByteBuf() {
        this(EMPTY_BYTES, 0, 0);
    }

    public ByteBuf(int initCapacity) {
        this(new byte[initCapacity], 0, 0);
    }

    public ByteBuf(byte[] data) {
        this(data, 0,  data.length);
    }

    public ByteBuf(byte[] data, int beginPos, int endPos) {
        this.data = data;
        this.beginPos = beginPos;
        this.endPos = endPos;
        this.capacity = data.length;
    }

//    public static Octets wrap(byte[] bytes) {
//        return new Octets(bytes, 0, bytes.length);
//    }
//
//    public static Octets wrap(byte[] bytes, int beginPos, int len) {
//        return new Octets(bytes, beginPos, beginPos + len);
//    }

    private final static ThreadLocal<Stack<ByteBuf>> pool = ThreadLocal.withInitial(Stack::new);
    public static ByteBuf alloc() {
        Stack<ByteBuf> p = pool.get();
        if(!p.empty()) {
            return p.pop();
        } else {
            return new ByteBuf();
        }
    }

    public static ByteBuf free(ByteBuf os) {
        os.clear();
        return pool.get().push(os);
    }

    public void replace(byte[] data, int beginPos, int endPos) {
        this.data = data;
        this.beginPos = beginPos;
        this.endPos = endPos;
        this.capacity = data.length;
    }

    public void replace(byte[] data) {
        this.data = data;
        this.beginPos = 0;
        this.endPos = this.capacity = data.length;
    }

    public void sureRead(int n) {
        if (beginPos + n > endPos) {
            throw new SerializationException("read not enough");
        }
    }

    private int chooseNewSize(int originSize, int needSize) {
        int newSize = Math.max(originSize, 12);
        while (newSize < needSize) {
            newSize = newSize * 3 / 2;
        }
        return newSize;
    }

    public void sureWrite(int n) {
        if (endPos + n > capacity) {
            int curSize = endPos - beginPos;
            int needSize = curSize + n;
            if (needSize > capacity) {
                capacity = chooseNewSize(capacity, needSize);
                byte[] newData = new byte[capacity];
                System.arraycopy(data, beginPos, newData, 0, curSize);
                data = newData;
            } else {
                System.arraycopy(data, beginPos, data, 0, curSize);
            }
            beginPos = 0;
            endPos = curSize;
        }
    }

    public void writeSize(int x) {
        writeCompactUint(x);
    }

    public int readSize() {
        return readCompactUint();
    }

    public void writeShort(short x) {
        writeCompactShort(x);
    }

    public short readShort() {
        return readCompactShort();
    }

    public short readCompactShort() {
        sureRead(1);
        int h = (data[beginPos] & 0xff);
        if (h < 0x80) {
            beginPos++;
            return (short)h;
        } else if (h < 0xc0) {
            sureRead(2);
            int x = ((h & 0x3f) << 8) | (data[beginPos + 1] & 0xff);
            beginPos += 2;
            return (short)x;
        } else if( (h == 0xff)){
            sureRead(3);
            int x = ((data[beginPos + 1] & 0xff) << 8) | (data[beginPos + 2] & 0xff);
            beginPos += 3;
            return (short)x;
        } else {
            throw new SerializationException("exceed max short");
        }
    }

    public void writeCompactShort(short x) {
        if (x >= 0) {
            if (x < 0x80) {
                sureWrite(1);
                data[endPos++] = (byte) x;
                return;
            } else if (x < 0x4000) {
                sureWrite(2);
                data[endPos + 1] = (byte) x;
                data[endPos] = (byte) ((x >> 8) | 0x80);
                endPos += 2;
                return;
            }
        }
        sureWrite(3);
        data[endPos] = (byte) 0xff;
        data[endPos + 2] = (byte) x;
        data[endPos + 1] = (byte) (x >> 8);
        endPos += 3;
    }

    public int readCompactInt() {
        sureRead(1);
        int h = data[beginPos] & 0xff;
        if (h < 0x80) {
            beginPos++;
            return h;
        } else if (h < 0xc0) {
            sureRead(2);
            int x = ((h & 0x3f) << 8) | (data[beginPos + 1] & 0xff);
            beginPos += 2;
            return x;
        } else if (h < 0xe0) {
            sureRead(3);
            int x = ((h & 0x1f) << 16) | ((data[beginPos + 1] & 0xff) << 8) | (data[beginPos + 2] & 0xff);
            beginPos += 3;
            return x;
        } else if (h < 0xf0) {
            sureRead(4);
            int x = ((h & 0x0f) << 24) | ((data[beginPos + 1] & 0xff) << 16) | ((data[beginPos + 2] & 0xff) << 8) | (data[beginPos + 3] & 0xff);
            beginPos += 4;
            return x;
        } else {
            sureRead(5);
            int x = ((data[beginPos + 1] & 0xff) << 24) | ((data[beginPos + 2] & 0xff) << 16) | ((data[beginPos + 3] & 0xff) << 8) | (data[beginPos + 4] & 0xff);
            beginPos += 5;
            return x;
        }
    }

    public void writeCompactInt(int x) {
        if (x >= 0) {
            if (x < 0x80) {
                sureWrite(1);
                data[endPos++] = (byte) x;
                return;
            } else if (x < 0x4000) {
                sureWrite(2);
                data[endPos + 1] = (byte) x;
                data[endPos] = (byte) ((x >> 8) | 0x80);
                endPos += 2;
                return;
            } else if (x < 0x200000) {
                sureWrite(3);
                data[endPos + 2] = (byte) x;
                data[endPos + 1] = (byte) (x >> 8);
                data[endPos] = (byte) ((x >> 16) | 0xc0);
                endPos += 3;
                return;
            } else if (x < 0x10000000) {
                sureWrite(4);
                data[endPos + 3] = (byte) x;
                data[endPos + 2] = (byte) (x >> 8);
                data[endPos + 1] = (byte) (x >> 16);
                data[endPos] = (byte) ((x >> 24) | 0xe0);
                endPos += 4;
                return;
            }
        }
        sureWrite(5);
        data[endPos] = (byte) 0xf0;
        data[endPos + 4] = (byte) x;
        data[endPos + 3] = (byte) (x >> 8);
        data[endPos + 2] = (byte) (x >> 16);
        data[endPos + 1] = (byte) (x >> 24);
        endPos += 5;
    }

    public long readCompactLong() {
        sureRead(1);
        int h = data[beginPos] & 0xff;
        if (h < 0x80) {
            beginPos++;
            return h;
        } else if (h < 0xc0) {
            sureRead(2);
            int x = ((h & 0x3f) << 8) | (data[beginPos + 1] & 0xff);
            beginPos += 2;
            return x;
        } else if (h < 0xe0) {
            sureRead(3);
            int x = ((h & 0x1f) << 16) | ((data[(beginPos + 1)] & 0xff) << 8) | (data[(beginPos + 2)] & 0xff);
            beginPos += 3;
            return x;
        } else if (h < 0xf0) {
            sureRead(4);
            int x = ((h & 0x0f) << 24) | ((data[(beginPos + 1)] & 0xff) << 16) | ((data[(beginPos + 2)] & 0xff) << 8) | (data[(beginPos + 3)] & 0xff);
            beginPos += 4;
            return x;
        } else if (h < 0xf8) {
            sureRead(5);
            int xl = (data[(beginPos + 1)] << 24) | ((data[(beginPos + 2)] & 0xff) << 16) | ((data[(beginPos + 3)] & 0xff) << 8) | (data[(beginPos + 4)] & 0xff);
            int xh = h & 0x07;
            beginPos += 5;
            return ((long) xh << 32) | (xl & 0xffffffffL);
        } else if (h < 0xfc) {
            sureRead(6);
            int xl = (data[(beginPos + 2)] << 24) | ((data[(beginPos + 3)] & 0xff) << 16) | ((data[(beginPos + 4)] & 0xff) << 8) | (data[(beginPos + 5)] & 0xff);
            int xh = ((h & 0x03) << 8) | (data[(beginPos + 1)] & 0xff);
            beginPos += 6;
            return ((long) xh << 32) | (xl & 0xffffffffL);
        } else if (h < 0xfe) {
            sureRead(7);
            int xl = (data[(beginPos + 3)] << 24) | ((data[(beginPos + 4)] & 0xff) << 16) | ((data[(beginPos + 5)] & 0xff) << 8) | (data[(beginPos + 6)] & 0xff);
            int xh = ((h & 0x01) << 16) | ((data[(beginPos + 1)] & 0xff) << 8) | (data[(beginPos + 2)] & 0xff);
            beginPos += 7;
            return ((long) xh << 32) | (xl & 0xffffffffL);
        } else if (h < 0xff) {
            sureRead(8);
            int xl = (data[(beginPos + 4)] << 24) | ((data[(beginPos + 5)] & 0xff) << 16) | ((data[(beginPos + 6)] & 0xff) << 8) | (data[(beginPos + 7)] & 0xff);
            int xh = /*((h & 0x0) << 16) | */
                    ((data[(beginPos + 1)] & 0xff) << 16) | ((data[(beginPos + 2)] & 0xff) << 8) | (data[(beginPos + 3)] & 0xff);
            beginPos += 8;
            return ((long) xh << 32) | (xl & 0xffffffffL);
        } else {
            sureRead(9);
            int xl = (data[(beginPos + 5)] << 24) | ((data[(beginPos + 6)] & 0xff) << 16) | ((data[(beginPos + 7)] & 0xff) << 8) | (data[(beginPos + 8)] & 0xff);
            int xh = (data[(beginPos + 1)] << 24) | ((data[(beginPos + 2)] & 0xff) << 16) | ((data[(beginPos + 3)] & 0xff) << 8) | (data[(beginPos + 4)] & 0xff);
            beginPos += 9;
            return ((long) xh << 32) | (xl & 0xffffffffL);
        }
    }

    public void writeCompactLong(long x) {
        if (x >= 0) {
            if (x < 0x80) {
                sureWrite(1);
                data[(endPos++)] = (byte) x;
                return;
            } else if (x < 0x4000) {
                sureWrite(2);
                data[(endPos + 1)] = (byte) x;
                data[(endPos)] = (byte) ((x >> 8) | 0x80);
                endPos += 2;
                return;
            } else if (x < 0x200000) {
                sureWrite(3);
                data[(endPos + 2)] = (byte) x;
                data[(endPos + 1)] = (byte) (x >> 8);
                data[(endPos)] = (byte) ((x >> 16) | 0xc0);
                endPos += 3;
                return;
            } else if (x < 0x10000000) {
                sureWrite(4);
                data[(endPos + 3)] = (byte) x;
                data[(endPos + 2)] = (byte) (x >> 8);
                data[(endPos + 1)] = (byte) (x >> 16);
                data[(endPos)] = (byte) ((x >> 24) | 0xe0);
                endPos += 4;
                return;
            } else if (x < 0x800000000L) {
                sureWrite(5);
                data[(endPos + 4)] = (byte) x;
                data[(endPos + 3)] = (byte) (x >> 8);
                data[(endPos + 2)] = (byte) (x >> 16);
                data[(endPos + 1)] = (byte) (x >> 24);
                data[(endPos)] = (byte) ((x >> 32) | 0xf0);
                endPos += 5;
                return;
            } else if (x < 0x40000000000L) {
                sureWrite(6);
                data[(endPos + 5)] = (byte) x;
                data[(endPos + 4)] = (byte) (x >> 8);
                data[(endPos + 3)] = (byte) (x >> 16);
                data[(endPos + 2)] = (byte) (x >> 24);
                data[(endPos + 1)] = (byte) (x >> 32);
                data[(endPos)] = (byte) ((x >> 40) | 0xf8);
                endPos += 6;
                return;
            } else if (x < 0x200000000000L) {
                sureWrite(7);
                data[(endPos + 6)] = (byte) x;
                data[(endPos + 5)] = (byte) (x >> 8);
                data[(endPos + 4)] = (byte) (x >> 16);
                data[(endPos + 3)] = (byte) (x >> 24);
                data[(endPos + 2)] = (byte) (x >> 32);
                data[(endPos + 1)] = (byte) (x >> 40);
                data[(endPos)] = (byte) ((x >> 48) | 0xfc);
                endPos += 7;
                return;
            } else if (x < 0x100000000000000L) {
                sureWrite(8);
                data[(endPos + 7)] = (byte) x;
                data[(endPos + 6)] = (byte) (x >> 8);
                data[(endPos + 5)] = (byte) (x >> 16);
                data[(endPos + 4)] = (byte) (x >> 24);
                data[(endPos + 3)] = (byte) (x >> 32);
                data[(endPos + 2)] = (byte) (x >> 40);
                data[(endPos + 1)] = (byte) (x >> 48);
                data[(endPos)] = /*(x >> 56) | */ (byte) 0xfe;
                endPos += 8;
                return;
            }
        }
        sureWrite(9);
        data[(endPos + 8)] = (byte) x;
        data[(endPos + 7)] = (byte) (x >> 8);
        data[(endPos + 6)] = (byte) (x >> 16);
        data[(endPos + 5)] = (byte) (x >> 24);
        data[(endPos + 4)] = (byte) (x >> 32);
        data[(endPos + 3)] = (byte) (x >> 40);
        data[(endPos + 2)] = (byte) (x >> 48);
        data[(endPos + 1)] = (byte) (x >> 56);
        data[(endPos)] = (byte) 0xff;
        endPos += 9;
    }

    public int readCompactUint() {
        int n = readCompactInt();
        if (n >= 0) {
            return n;
        } else {
            throw new SerializationException("unmarshal CompactUnit");
        }
    }

    public void writeCompactUint(int x) {
        writeCompactInt(x);
    }

//    public void writeCompactUint(ByteBuf byteBuf, int x) {
//        if (x >= 0) {
//            if (x < 0x80) {
//                byteBuf.writeByte(x);
//            } else if (x < 0x4000) {
//                byteBuf.writeShort(x | 0x8000);
//            } else if (x < 0x200000) {
//                byteBuf.writeMedium(x | 0xc00000);
//            } else if (x < 0x10000000) {
//                byteBuf.writeInt(x | 0xe0000000);
//            } else {
//                throw new RuntimeException("exceed max unit");
//            }
//        }
//    }

    public int readInt() {
        return readCompactInt();
    }

    public void writeInt(int x) {
        writeCompactInt(x);
    }

    public long readLong() {
        return readCompactLong();
    }

    public void writeLong(long x) {
        writeCompactLong(x);
    }

    public void writeSint(int x) {
        writeInt((x << 1) | (x >>> 31));
    }

    public int readSint() {
        int x = readInt();
        return (x >>> 1) | ((x&1) << 31);
    }

    public void writeSlong(long x) {
        writeLong((x << 1) | (x >>> 63));
    }

    public long readSlong() {
        long x = readLong();
        return (x >>> 1) | ((x&1L) << 63);
    }
    public short readFshort() {
        sureRead(4);
        int x = (data[(beginPos)] & 0xff) | ((data[(beginPos + 1)] & 0xff) << 8);
        beginPos += 2;
        return (short)x;
    }

    public void writeFshort(short x) {
        sureWrite(2);
        data[(endPos)] = (byte) (x & 0xff);
        data[(endPos + 1)] = (byte) ((x >> 8) & 0xff);
        endPos += 2;
    }

    public int readFint() {
        sureRead(4);
        int x = (data[(beginPos)] & 0xff) | ((data[(beginPos + 1)] & 0xff) << 8) | ((data[(beginPos + 2)] & 0xff) << 16) | ((data[(beginPos + 3)] & 0xff) << 24);
        beginPos += 4;
        return x;
    }

    public void writeFint(int x) {
        sureWrite(4);
        data[(endPos)] = (byte) (x & 0xff);
        data[(endPos + 1)] = (byte) ((x >> 8) & 0xff);
        data[(endPos + 2)] = (byte) ((x >> 16) & 0xff);
        data[(endPos + 3)] = (byte) ((x >> 24) & 0xff);
        endPos += 4;
    }

    public long readFlong() {
        sureRead(8);
        long x = ((data[(beginPos + 7)] & 0xffL) << 56) | ((data[(beginPos + 6)] & 0xffL) << 48) | ((data[(beginPos + 5)] & 0xffL) << 40) | ((data[(beginPos + 4)] & 0xffL) << 32) | ((data[(beginPos + 3)] & 0xffL) << 24) | ((data[(beginPos + 2)] & 0xffL) << 16) | ((data[(beginPos + 1)] & 0xffL) << 8) | (data[(beginPos)] & 0xffL);
        beginPos += 8;
        return x;
    }

    public void writeFlong(long x) {
        sureWrite(8);
        data[(endPos + 7)] = (byte) (x >> 56);
        data[(endPos + 6)] = (byte) (x >> 48);
        data[(endPos + 5)] = (byte) (x >> 40);
        data[(endPos + 4)] = (byte) (x >> 32);
        data[(endPos + 3)] = (byte) (x >> 24);
        data[(endPos + 2)] = (byte) (x >> 16);
        data[(endPos + 1)] = (byte) (x >> 8);
        data[(endPos)] = (byte) x;
        endPos += 8;
    }

    public float readFloat() {
        return Float.intBitsToFloat(readFint());
    }

    public void writeFloat(float z) {
        writeFint(Float.floatToIntBits(z));
    }

    public double readDouble() {
        return Double.longBitsToDouble(readFlong());
    }

    public void writeDouble(double z) {
        writeFlong(Double.doubleToLongBits(z));
    }

    public String readString() {
        int n = readSize();
        if(n > 0) {
            sureRead(n);
            int start = beginPos;
            beginPos += n;
            return new String(data, start, n, ByteBuf.MARSHAL_CHARSET);
        } else {
            return "";
        }
    }

    public void writeString(String x) {
        if(x.length() > 0) {
            byte[] bytes = x.getBytes(ByteBuf.MARSHAL_CHARSET);
            int n = bytes.length;
            writeCompactUint(n);
            sureWrite(n);
            System.arraycopy(bytes, 0, data, endPos, n);
            endPos += n;
        } else {
            writeCompactUint(0);
        }
    }

    public void writeOctets(ByteBuf o) {
        int n = o.size();
        writeCompactUint(n);
        if(n > 0) {
            sureWrite(n);
            System.arraycopy(o.data, o.beginPos, this.data, this.endPos, n);
            this.endPos += n;
        }
    }

    public ByteBuf readOctets() {
        int n = readSize();
        sureRead(n);
        int start = beginPos;
        beginPos += n;
        return new ByteBuf(Arrays.copyOfRange(data, start, beginPos));
    }

    public ByteBuf readOctets(ByteBuf o) {
        int n = readSize();
        sureRead(n);
        int start = beginPos;
        beginPos += n;
        o.sureWrite(n);
        System.arraycopy(data, start, o.data, o.endPos, n);
        o.endPos += n;
        return o;
    }

    public byte[] readBytes() {
        int n = readSize();
        if(n > 0) {
            sureRead(n);
            int start = beginPos;
            beginPos += n;
            return Arrays.copyOfRange(data, start, beginPos);
        } else {
            return EMPTY_BYTES;
        }
    }

    public void writeBytes(byte[] x) {
        int n = x.length;
        writeCompactUint(n);
        if(n > 0) {
            sureWrite(n);
            System.arraycopy(x, 0, data, endPos, n);
            endPos += n;
        }
    }

    public boolean readBool() {
        sureRead(1);
        return data[(beginPos++)] != 0;
    }

    public void writeBool(boolean x) {
        sureWrite(1);
        data[(endPos++)] = x ? (byte) 1 : 0;
    }

    public byte readByte() {
        sureRead(1);
        return data[(beginPos++)];
    }

    public void writeByte(byte x) {
        sureWrite(1);
        data[endPos++] = x;
    }

//    public void writeTo(ByteBuf byteBuf) {
//        int n = size();
//        writeCompactUint(byteBuf, n);
//        byteBuf.writeBytes(data, beginPos, n);
//    }

    public void writeTo(ByteBuf os) {
        int n = size();
        os.writeCompactUint(n);
        os.sureWrite(n);
        System.arraycopy(data, beginPos, os.data, os.endPos, n);
        os.endPos += n;
    }

//    public void readFrom(ByteBuf byteBuf) {
//        int n = byteBuf.readableBytes();
//        sureWrite(n);
//        byteBuf.readBytes(data, endPos, n);
//        endPos += n;
//    }

    public void wrapRead(ByteBuf src, int size) {
        this.data = src.data;
        this.beginPos = src.beginPos;
        this.endPos = src.beginPos += size;
        this.capacity = src.capacity;
    }

    public void clear() {
        beginPos = 0;
        endPos = 0;
    }

    public int size() {
        return endPos - beginPos;
    }

    public boolean empty() {
        return endPos == beginPos;
    }

    public boolean nonEmpty() {
        return endPos > beginPos;
    }

    public int readerIndex() {
        return beginPos;
    }

    public void rollbackReadIndex(int readerMark) {
        beginPos = readerMark;
    }

    public void skip(int n) {
        sureRead(n);
        beginPos += n;
    }

    public void skipBytes() {
        int n = readSize();
        sureRead(n);
        beginPos += n;
    }

    public byte[] array() {
        return data;
    }

    public byte[] copyRemainData() {
        return Arrays.copyOfRange(data, beginPos, endPos);
    }

    public String toString() {
        StringBuilder b = new StringBuilder();
        for (int i = beginPos; i < endPos; i++) {
            b.append(data[i]).append(",");
        }
        return b.toString();
    }

    public static ByteBuf fromString(String value) {
        if(value.isEmpty()) {
            return new ByteBuf();
        }
        String[] ss = value.split(",");
        byte[] data = new byte[ss.length];
        for (int i = 0; i < data.length; i++) {
            data[i] = (byte)Integer.parseInt(ss[i]);
        }
        return new ByteBuf(data);
    }

    @Override
    public boolean equals(Object x) {
        if (!(x instanceof ByteBuf)) return false;
        ByteBuf o = (ByteBuf) x;
        if (size() != o.size()) return false;
        for (int i = beginPos; i < endPos; i++) {
            if (data[i] != o.data[o.beginPos + i - beginPos])
                return false;
        }
        return true;
    }
}
