export enum EDeserializeError {
    OK,
    NOT_ENOUGH,
    EXCEED_SIZE,
}

const MIN_CAPACITY: number = 16;

const f_2power32 = Math.pow(2, 32);
const f_2power56 = Math.pow(2, 56);

export default class ByteBuf {
    private static emptyBuff: Uint8Array = new Uint8Array(0);

    private _bytes: Uint8Array;
    private _readerIndex: number;
    private _writerIndex: number;

    constructor(bytes?: Uint8Array) {
        this._bytes = bytes != null ? new Uint8Array(bytes) : ByteBuf.emptyBuff;
        this._readerIndex = 0;
        this._writerIndex = bytes != null ? bytes.length : 0;
    }

    Replace(bytes: Uint8Array) {
        this._bytes = new Uint8Array(bytes);
        this._readerIndex = 0;
        this._writerIndex = bytes.length;
    }

    Replace2(bytes: Uint8Array, beginPos: number, endPos: number) {
        this._bytes = new Uint8Array(bytes.subarray(beginPos, endPos));
        this._readerIndex = beginPos;
        this._writerIndex = endPos;
    }

    get Capacity(): number { return this._bytes.length; }
    get Size(): number { return this._writerIndex - this._readerIndex; }
    get Empty(): boolean { return this._writerIndex <= this._readerIndex; }
    get NotEmpty(): boolean { return this._writerIndex > this._readerIndex; }

    getBytesNotSafe(): Uint8Array { return this._bytes; }

    AddWriteIndex(add: number) {
        this._writerIndex += add;
    }

    AddReadIndex(add: number) {
        this._readerIndex += add;
    }

    CopyData(): Uint8Array {
        const n = this.Remaining;
        if (n > 0) {
            return new Uint8Array(this._bytes.buffer.slice(this._readerIndex, this._writerIndex));
        } else {
            return ByteBuf.emptyBuff;
        }
    }

    get Remaining(): number { return this._writerIndex - this._readerIndex; }

    DiscardReadBytes() {
        this._bytes.copyWithin(0, this._readerIndex, this._writerIndex);
        this._writerIndex -= this._readerIndex;
        this._readerIndex = 0;
    }

    get NotCompactWritable(): number { return this._bytes.length - this._writerIndex; }

    WriteBytesWithoutSize(bs: Uint8Array) {
        this.WriteBytesWithoutSize2(bs, 0, bs.length);
    }

    WriteBytesWithoutSize2(bs: Uint8Array, offset: number, len: number) {
        this.EnsureWrite(len);
        for (let i = 0; i < len; i++) {
            this._bytes[this._writerIndex + i] = bs[offset + i];
        }
        this._writerIndex += len;
    }

    Clear() {
        this._readerIndex = this._writerIndex = 0;
    }

    private static PropSize(initSize: number, needSize: number): number {
        for (let i = Math.max(initSize, MIN_CAPACITY); i <<= 1;) {
            if (i >= needSize) {
                return i;
            }
        }
    }

    private EnsureWrite0(size: number) {
        const needSize = this._writerIndex + size - this._readerIndex;
        if (needSize <= this.Capacity) {
            this._bytes.copyWithin(0, this._readerIndex, this._writerIndex);
            this._writerIndex -= this._readerIndex;
            this._readerIndex = 0;
        } else {
            const newCapacity = ByteBuf.PropSize(this.Capacity, needSize);
            const oldBuf = this._bytes;
            this._bytes = new Uint8Array(newCapacity);
            this._bytes.set(oldBuf.subarray(this._readerIndex, this._writerIndex));
            this._writerIndex -= this._readerIndex;
            this._readerIndex = 0;
        }
    }

    EnsureWrite(size: number) {
        if (this._writerIndex + size > this.Capacity) {
            this.EnsureWrite0(size);
        }
    }

    private EnsureRead(size: number) {
        if (this._readerIndex + size > this._writerIndex) {
            throw new Error();
        }
    }

    private CanRead(size: number): boolean {
        return (this._readerIndex + size <= this._writerIndex);
    }

    WriteBool(b: boolean) {
        this.EnsureWrite(1);
        this._bytes[this._writerIndex++] = b ? 1 : 0;
    }

    ReadBool(): boolean {
        this.EnsureRead(1);
        return this._bytes[this._readerIndex++] != 0;
    }

    WriteByte(x: number) {
        this.EnsureWrite(1);
        this._bytes[this._writerIndex++] = x;
    }

    ReadByte(): number {
        this.EnsureRead(1);
        return this._bytes[this._readerIndex++];
    }

    WriteShort(x: number) {
        if (x >= 0) {
            if (x < 0x80) {
                this.EnsureWrite(1);
                this._bytes[this._writerIndex++] = x;
                return;
            }
            else if (x < 0x4000) {
                this.EnsureWrite(2);
                const v = x | 0x8000;
                new DataView(this._bytes.buffer).setUint16(this._writerIndex, v, false);
                this._writerIndex += 2;
                return;
            }
        }
        this.EnsureWrite(4);
        this._bytes[this._writerIndex] = 0xff;
        new DataView(this._bytes.buffer).setInt16(this._writerIndex + 1, x, false);
        this._writerIndex += 3;
    }

    ReadShort(): number {
        this.EnsureRead(1);
        const h = this._bytes[this._readerIndex];
        if (h < 0x80) {
            this._readerIndex++;
            return h;
        }
        else if (h < 0xc0) {
            this.EnsureRead(2);
            const x = new DataView(this._bytes.buffer).getUint16(this._readerIndex, false) & 0x3fff;
            this._readerIndex += 2;
            return x;
        }
        else if ((h == 0xff)) {
            this.EnsureRead(3);
            const x = new DataView(this._bytes.buffer).getInt16(this._readerIndex + 1, false);
            this._readerIndex += 3;
            return x;
        }
        else {
            throw new Error();
        }
    }

    ReadFshort(): number {
        this.EnsureRead(2);
        const x = new DataView(this._bytes.buffer).getInt16(this._readerIndex, true);
        this._readerIndex += 2;
        return x;
    }

    WriteFshort(x: number) {
        this.EnsureWrite(2);
        new DataView(this._bytes.buffer).setInt16(this._writerIndex, x, true);
        this._writerIndex += 2;
    }

    WriteInt(x: number) {
        if (x < 0) {
            this.EnsureWrite(5);
            this._bytes[this._writerIndex] = 0xff;
            new DataView(this._bytes.buffer).setInt32(this._writerIndex + 1, x, false);
            this._writerIndex += 5;
        } else if (x < 0x80) {
            this.EnsureWrite(1);
            this._bytes[this._writerIndex++] = x;
        }
        else if (x < 0x4000) {
            this.EnsureWrite(2);
            new DataView(this._bytes.buffer).setUint16(this._writerIndex, x | 0x8000, false);
            this._writerIndex += 2;
        }
        else if (x < 0x200000) {
            this.EnsureWrite(4);
            new DataView(this._bytes.buffer).setUint32(this._writerIndex, (x | 0xc00000) << 8, false);
            this._writerIndex += 3;
        }
        else if (x < 0x10000000) {
            this.EnsureWrite(4);
            new DataView(this._bytes.buffer).setUint32(this._writerIndex, x | 0xe0000000, false);
            this._writerIndex += 4;
        }
        else {
            this.EnsureWrite(5);
            this._bytes[this._writerIndex] = 0xf0;
            new DataView(this._bytes.buffer).setUint32(this._writerIndex + 1, x, false);
            this._writerIndex += 5;
        }
    }

    ReadInt(): number {
        this.EnsureRead(1);
        const h = this._bytes[this._readerIndex];
        if (h < 0x80) {
            this._readerIndex++;
            return h;
        }
        else if (h < 0xc0) {
            this.EnsureRead(2);
            const x = new DataView(this._bytes.buffer).getUint16(this._readerIndex, false) & 0x3fff;
            this._readerIndex += 2;
            return x;
        }
        else if (h < 0xe0) {
            this.EnsureRead(3);
            const x = ((h & 0x1f) << 16) | new DataView(this._bytes.buffer).getUint16(this._readerIndex + 1, false);
            this._readerIndex += 3;
            return x;
        }
        else if (h < 0xf0) {
            this.EnsureRead(4);
            const x = new DataView(this._bytes.buffer).getInt32(this._readerIndex, false) & 0x0fffffff;
            this._readerIndex += 4;
            return x;
        }
        else {
            this.EnsureRead(5);
            const x = new DataView(this._bytes.buffer).getInt32(this._readerIndex + 1, false);
            this._readerIndex += 5;
            return x;
        }
    }

    ReadFint(): number {
        this.EnsureRead(4);
        const x = new DataView(this._bytes.buffer).getInt32(this._readerIndex, true);
        this._readerIndex += 4;
        return x;
    }

    WriteFint(x: number) {
        this.EnsureWrite(4);
        new DataView(this._bytes.buffer).setInt32(this._writerIndex, x, true);
        this._writerIndex += 4;
    }

    WriteNumberAsLong(x: number) {
        if (x < 0) {
            this.EnsureWrite(9);
            this._bytes[this._writerIndex] = 0xff;
            new DataView(this._bytes.buffer).setBigInt64(this._writerIndex + 1, BigInt(x), false);
            this._writerIndex += 9;
        } else if (x < 0x80) {
            this.EnsureWrite(1);
            this._bytes[this._writerIndex++] = x;
        }
        else if (x < 0x4000) {
            this.EnsureWrite(2);
            new DataView(this._bytes.buffer).setUint16(this._writerIndex, x | 0x8000, false);
            this._writerIndex += 2;
        }
        else if (x < 0x200000) {
            this.EnsureWrite(4);
            new DataView(this._bytes.buffer).setUint32(this._writerIndex, (x | 0xc00000) << 8, false);
            this._writerIndex += 3;
        }
        else if (x < 0x10000000) {
            this.EnsureWrite(4);
            new DataView(this._bytes.buffer).setUint32(this._writerIndex, x | 0xe0000000, false);
            this._writerIndex += 4;
        }
        else if (x < 0x800000000) {
            this.EnsureWrite(8);
            new DataView(this._bytes.buffer).setUint8(this._writerIndex, (x / 0x100000000) | 0xf0);
            new DataView(this._bytes.buffer).setUint32(this._writerIndex + 1, x % 0x100000000, false);
            this._writerIndex += 5;
        }
        else if (x < 0x40000000000) {
            this.EnsureWrite(8);
            new DataView(this._bytes.buffer).setUint16(this._writerIndex, (x / 0x100000000) | 0xf800, false);
            new DataView(this._bytes.buffer).setUint32(this._writerIndex + 2, x % 0x100000000, false);
            this._writerIndex += 6;
        }
        else if (x < 0x200000000000) {
            this.EnsureWrite(8);
            new DataView(this._bytes.buffer).setUint32(this._writerIndex, ((x / 0x100000000) | 0xfc0000) << 8, false);
            new DataView(this._bytes.buffer).setUint32(this._writerIndex + 3, x % 0x100000000, false);
            this._writerIndex += 7;
        }
        else if (x <= Number.MAX_SAFE_INTEGER) {
            this.EnsureWrite(8);
            new DataView(this._bytes.buffer).setUint32(this._writerIndex, (x / 0x100000000) | 0xfe000000, false);
            new DataView(this._bytes.buffer).setUint32(this._writerIndex + 4, x % 0x100000000, false);
            this._writerIndex += 8;
        }
        else if (x < f_2power56) {
            this.EnsureWrite(9);
            let n = BigInt(x);
            new DataView(this._bytes.buffer).setBigInt64(this._writerIndex, n | (BigInt(0xfe) << BigInt(56)), false);
            this._writerIndex += 8;
        }
        else {
            this.EnsureWrite(9);
            this._bytes[this._writerIndex] = 0xff;
            new DataView(this._bytes.buffer).setBigInt64(this._writerIndex + 1, BigInt(x), false);
            this._writerIndex += 9;
        }
    }

    ReadLongAsNumber(): number {
        this.EnsureRead(1);
        const h = this._bytes[this._readerIndex];
        if (h < 0x80) {
            this._readerIndex++;
            return h;
        }
        else if (h < 0xc0) {
            this.EnsureRead(2);
            const x = new DataView(this._bytes.buffer).getUint16(this._readerIndex, false) & 0x3fff;
            this._readerIndex += 2;
            return x;
        }
        else if (h < 0xe0) {
            this.EnsureRead(3);
            const x = ((h & 0x1f) << 16) | new DataView(this._bytes.buffer).getUint16(this._readerIndex + 1, false);
            this._readerIndex += 3;
            return x;
        }
        else if (h < 0xf0) {
            this.EnsureRead(4);
            const x = new DataView(this._bytes.buffer).getInt32(this._readerIndex, false) & 0x0fffffff;
            this._readerIndex += 4;
            return x;
        }
        else if (h < 0xf8) {
            this.EnsureRead(5);
            const xl = new DataView(this._bytes.buffer).getUint32(this._readerIndex + 1, false);
            const xh = h & 0x07;
            this._readerIndex += 5;
            return xh * 0x100000000 + xl;
        }
        else if (h < 0xfc) {
            this.EnsureRead(6);
            const xl = new DataView(this._bytes.buffer).getUint32(this._readerIndex + 2, false);
            const xh = new DataView(this._bytes.buffer).getUint16(this._readerIndex, false) & 0x3ff;
            this._readerIndex += 6;
            return xh * 0x100000000 + xl;
        }
        else if (h < 0xfe) {
            this.EnsureRead(7);
            const xl = new DataView(this._bytes.buffer).getUint32(this._readerIndex + 3, false);
            const xh = (new DataView(this._bytes.buffer).getUint32(this._readerIndex, false) >> 8) & 0x1ffff;
            this._readerIndex += 7;
            return xh * 0x100000000 + xl;
        }
        else if (h < 0xff) {
            this.EnsureRead(8);
            const xl = new DataView(this._bytes.buffer).getUint32(this._readerIndex + 4, false);
            const xh = new DataView(this._bytes.buffer).getUint32(this._readerIndex, false) & 0xffffff;
            this._readerIndex += 8;
            return xh * f_2power32 + xl;
        }
        else {
            this.EnsureRead(9);
            const x = new DataView(this._bytes.buffer).getBigInt64(this._readerIndex + 1, false);
            this._readerIndex += 9;
            return Number(x);
        }
    }

    WriteLong(n: bigint) {
        if (n < 0 || n >= f_2power56) {
            this.EnsureWrite(9);
            this._bytes[this._writerIndex] = 0xff;
            new DataView(this._bytes.buffer).setBigInt64(this._writerIndex + 1, n, false);
            this._writerIndex += 9;
            return;
        }
        if (n > Number.MAX_SAFE_INTEGER) {
            this.EnsureWrite(8);
            new DataView(this._bytes.buffer).setBigUint64(this._writerIndex, n | (BigInt(0xfe) << BigInt(56)), false);
            this._writerIndex += 8;
            return;
        }

        let x = Number(n);
        if (x < 0x80) {
            this.EnsureWrite(1);
            this._bytes[this._writerIndex++] = x;
        }
        else if (x < 0x4000) {
            this.EnsureWrite(2);
            new DataView(this._bytes.buffer).setUint16(this._writerIndex, x | 0x8000, false);
            this._writerIndex += 2;
        }
        else if (x < 0x200000) {
            this.EnsureWrite(4);
            new DataView(this._bytes.buffer).setUint32(this._writerIndex, (x | 0xc00000) << 8, false);
            this._writerIndex += 3;
        }
        else if (x < 0x10000000) {
            this.EnsureWrite(4);
            new DataView(this._bytes.buffer).setUint32(this._writerIndex, x | 0xe0000000, false);
            this._writerIndex += 4;
        }
        else if (x < 0x800000000) {
            this.EnsureWrite(8);
            new DataView(this._bytes.buffer).setUint8(this._writerIndex, (x / 0x100000000) | 0xf0);
            new DataView(this._bytes.buffer).setUint32(this._writerIndex + 1, x % 0x100000000, false);
            this._writerIndex += 5;
        }
        else if (x < 0x40000000000) {
            this.EnsureWrite(8);
            new DataView(this._bytes.buffer).setUint16(this._writerIndex, (x / 0x100000000) | 0xf800, false);
            new DataView(this._bytes.buffer).setUint32(this._writerIndex + 2, x % 0x100000000, false);
            this._writerIndex += 6;
        }
        else if (x < 0x200000000000) {
            this.EnsureWrite(8);
            new DataView(this._bytes.buffer).setUint32(this._writerIndex, ((x / 0x100000000) | 0xfc0000) << 8, false);
            new DataView(this._bytes.buffer).setUint32(this._writerIndex + 3, x % 0x100000000, false);
            this._writerIndex += 7;
        }
        else {
            this.EnsureWrite(8);
            new DataView(this._bytes.buffer).setUint32(this._writerIndex, (x / 0x100000000) | 0xfe000000, false);
            new DataView(this._bytes.buffer).setUint32(this._writerIndex + 4, x % 0x100000000, false);
            this._writerIndex += 8;
        }
    }

    ReadLong(): bigint {
        this.EnsureRead(1);
        const h = this._bytes[this._readerIndex];
        if (h < 0x80) {
            this._readerIndex++;
            return BigInt(h);
        }
        else if (h < 0xc0) {
            this.EnsureRead(2);
            const x = new DataView(this._bytes.buffer).getUint16(this._readerIndex, false) & 0x3fff;
            this._readerIndex += 2;
            return BigInt(x);
        }
        else if (h < 0xe0) {
            this.EnsureRead(3);
            const x = ((h & 0x1f) << 16) | new DataView(this._bytes.buffer).getUint16(this._readerIndex + 1, false);
            this._readerIndex += 3;
            return BigInt(x);
        }
        else if (h < 0xf0) {
            this.EnsureRead(4);
            const x = new DataView(this._bytes.buffer).getInt32(this._readerIndex, false) & 0x0fffffff;
            this._readerIndex += 4;
            return BigInt(x);
        }
        else if (h < 0xf8) {
            this.EnsureRead(5);
            const xl = new DataView(this._bytes.buffer).getUint32(this._readerIndex + 1, false);
            const xh = h & 0x07;
            this._readerIndex += 5;
            return BigInt(xh * 0x100000000 + xl);
        }
        else if (h < 0xfc) {
            this.EnsureRead(6);
            const xl = new DataView(this._bytes.buffer).getUint32(this._readerIndex + 2, false);
            const xh = new DataView(this._bytes.buffer).getUint16(this._readerIndex, false) & 0x3ff;
            this._readerIndex += 6;
            return BigInt(xh * 0x100000000 + xl);
        }
        else if (h < 0xfe) {
            this.EnsureRead(7);
            const xl = new DataView(this._bytes.buffer).getUint32(this._readerIndex + 3, false);
            const xh = (new DataView(this._bytes.buffer).getUint32(this._readerIndex, false) >> 8) & 0x1ffff;
            this._readerIndex += 7;
            return BigInt(xh * 0x100000000 + xl);
        }
        else if (h < 0xff) {
            this.EnsureRead(8);
            const xl = new DataView(this._bytes.buffer).getUint32(this._readerIndex + 4, false);
            const xh = new DataView(this._bytes.buffer).getUint32(this._readerIndex, false) & 0xffffff;
            this._readerIndex += 8;
            return (BigInt(xh) << BigInt(32)) | BigInt(xl);
        }
        else {
            this.EnsureRead(9);
            const x = new DataView(this._bytes.buffer).getBigInt64(this._readerIndex + 1, false);
            this._readerIndex += 9;
            return x;
        }
    }

    WriteFlong(x: bigint) {
        this.EnsureWrite(8);
        new DataView(this._bytes.buffer).setBigInt64(this._writerIndex, x, true);
        this._writerIndex += 8;
    }

    ReadFlong(): bigint {
        this.EnsureRead(8);
        let x = new DataView(this._bytes.buffer).getBigInt64(this._readerIndex, true);
        this._readerIndex += 8;
        return x;
    }

    WriteFloat(x: number) {
        this.EnsureWrite(4);
        new DataView(this._bytes.buffer).setFloat32(this._writerIndex, x, true);
        this._writerIndex += 4;
    }

    ReadFloat(): number {
        this.EnsureRead(4);
        const x = new DataView(this._bytes.buffer).getFloat32(this._readerIndex, true);
        this._readerIndex += 4;
        return x;
    }

    WriteDouble(x: number) {
        this.EnsureWrite(8);
        new DataView(this._bytes.buffer).setFloat64(this._writerIndex, x, true);
        this._writerIndex += 8;
    }

    ReadDouble(): number {
        this.EnsureRead(8);
        const x = new DataView(this._bytes.buffer).getFloat64(this._readerIndex, true);
        this._readerIndex += 8;
        return x;
    }

    WriteSize(n: number) {
        this.WriteInt(n);
    }

    ReadSize(): number {
        return this.ReadInt();
    }

    WriteString(x: string) {
        const n = new TextEncoder().encode(x).length;
        this.WriteSize(n);
        if (n > 0) {
            this.EnsureWrite(n);
            new TextEncoder().encodeInto(x, this._bytes.subarray(this._writerIndex, this._writerIndex + n));
            this._writerIndex += n;
        }
    }

    ReadString(): string {
        const n = this.ReadSize();
        if (n > 0) {
            this.EnsureRead(n);
            const s = new TextDecoder().decode(this._bytes.subarray(this._readerIndex, this._readerIndex + n));
            this._readerIndex += n;
            return s;
        }
        else {
            return "";
        }
    }

    WriteBytes(x: Uint8Array) {
        const n = x != null ? x.length : 0;
        this.WriteSize(n);
        if (n > 0) {
            this.EnsureWrite(n);
            this._bytes.set(x, this._writerIndex);
            this._writerIndex += n;
        }
    }

    ReadBytes(): Uint8Array {
        const n = this.ReadSize();
        if (n > 0) {
            this.EnsureRead(n);
            const x = this._bytes.subarray(this._readerIndex, this._readerIndex + n);
            this._readerIndex += n;
            return x;
        }
        else {
            return ByteBuf.emptyBuff;
        }
    }

    WriteArrayBuffer(b: ArrayBuffer) {
        this.WriteBytes(new Uint8Array(b));
    }

    ReadArrayBuffer(): ArrayBuffer {
        return this.ReadBytes().buffer;
    }

    SkipBytes() {
        const n = this.ReadSize();
        this.EnsureRead(n);
        this._readerIndex += n;
    }

    WriteByteBufWithSize(o: ByteBuf) {
        const n: number = o.Size;
        if (n > 0) {
            this.WriteSize(n);
            this.WriteBytesWithoutSize2(o._bytes, o._readerIndex, n);
        }
        else {
            this.WriteByte(0);
        }
    }

    WriteByteBufWithoutSize(o: ByteBuf) {
        const n: number = o.Size;
        if (n > 0) {
            this.WriteBytesWithoutSize2(o._bytes, o._readerIndex, n);
        }
    }

    WriteRawTag1(b1: number) {
        this.EnsureWrite(1);
        this._bytes[this._writerIndex++] = b1;
    }

    WriteRawTag2(b1: number, b2: number) {
        this.EnsureWrite(2);
        this._bytes[this._writerIndex] = b1;
        this._bytes[this._writerIndex + 1] = b2;
        this._writerIndex += 2;
    }

    WriteRawTag3(b1: number, b2: number, b3: number) {
        this.EnsureWrite(3);
        this._bytes[this._writerIndex] = b1;
        this._bytes[this._writerIndex + 1] = b2;
        this._bytes[this._writerIndex + 2] = b3;
        this._writerIndex += 3;
    }
}
