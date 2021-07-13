

export enum EDeserializeError {
    OK,
    NOT_ENOUGH,
    EXCEED_SIZE,
}


const MIN_CAPACITY: number = 16

const f_2power32 = Math.pow(2, 32)
const f_2power56 = Math.pow(2, 56)

export default class ByteBuf {
    private static emptyBuff: Buffer = Buffer.allocUnsafe(0)

    constructor(bytes?: Uint8Array) {
        this._bytes = bytes != null ? Buffer.from(bytes) : ByteBuf.emptyBuff
        this._readerIndex = 0
        this._writerIndex = bytes != null ? bytes.length : 0
    }


    Replace(bytes: Uint8Array) {
        this._bytes = Buffer.from(bytes)
        this._readerIndex = 0
        this._writerIndex = bytes.length
    }

    Replace2(bytes: Uint8Array, beginPos: number, endPos: number) {
        this._bytes = Buffer.from(bytes, beginPos, endPos - beginPos)
        this._readerIndex = beginPos
        this._writerIndex = endPos
    }

    private _bytes: Buffer

    // get Bytes(): Buffer { return this._bytes }

    private _readerIndex: number
    // get this._readerIndex(): number { return this._readerIndex }
    // set this._readerIndex(value: number) { this._readerIndex = value }

    private _writerIndex: number
    // get this._writerIndex(): number { return this._writerIndex }
    // set this._writerIndex(value: number) { this._writerIndex = value }

    get Capacity(): number { return this._bytes.length }
    get Size(): number { return this._writerIndex - this._readerIndex }
    get Empty(): boolean { return this._writerIndex <= this._readerIndex }
    get NotEmpty(): boolean { return this._writerIndex > this._readerIndex }

    getBytesNotSafe(): Buffer { return this._bytes }


    AddWriteIndex(add: number) {
        this._writerIndex += add
    }

    AddReadIndex(add: number) {
        this._readerIndex += add
    }

    private static emptyBytes: Uint8Array = new Uint8Array()

    CopyData(): Uint8Array {
        const n = this.Remaining
        if (n > 0) {
            return new Uint8Array(this._bytes.buffer.slice(this._readerIndex, this._writerIndex))
        } else {
            return ByteBuf.emptyBytes
        }
    }

    get Remaining(): number { return this._writerIndex - this._readerIndex }

    DiscardReadBytes() {
        this._bytes.copyWithin(0, this._readerIndex, this._writerIndex)
        this._writerIndex -= this._readerIndex
        this._readerIndex = 0
    }

    get NotCompactWritable(): number { return this._bytes.length - this._writerIndex }

    WriteBytesWithoutSize(bs: Uint8Array) {
        this.WriteBytesWithoutSize2(bs, 0, bs.length)
    }

    WriteBytesWithoutSize2(bs: Uint8Array, offset: number, len: number) {
        this.EnsureWrite(len)
        for (let i = 0; i < len; i++) {
            this._bytes[this._writerIndex + i] = bs[offset + i]
        }
        this._writerIndex += len
    }

    Clear() {
        this._readerIndex = this._writerIndex = 0
    }


    private static PropSize(initSize: number, needSize: number): number {
        for (let i = Math.max(initSize, MIN_CAPACITY); i <<= 1;) {
            if (i >= needSize) {
                return i
            }
        }
    }

    private EnsureWrite0(size: number) {
        const needSize = this._writerIndex + size - this._readerIndex
        // console.log(`== EnsureWrite0. size:${size} need:${needSize}`)
        if (needSize <= this.Capacity) {
            this._bytes.copyWithin(0, this._readerIndex, this._writerIndex)
            this._writerIndex -= this._readerIndex
            this._readerIndex = 0
        } else {
            const newCapacity = ByteBuf.PropSize(this.Capacity, needSize)
            // console.log(`== EnsureWrite AllocUnsafe.  need:${needSize} new capacity:${newCapacity}`)
            const oldBuf = this._bytes
            this._bytes = Buffer.allocUnsafe(newCapacity)
            oldBuf.copy(this._bytes, 0, this._readerIndex, this._writerIndex)
            this._writerIndex -= this._readerIndex
            this._readerIndex = 0
        }
    }

    EnsureWrite(size: number) {
        if (this._writerIndex + size > this.Capacity) {
            this.EnsureWrite0(size)
        }
    }


    private EnsureRead(size: number) {
        if (this._readerIndex + size > this._writerIndex) {
            throw new Error()
        }
    }


    private CanRead(size: number): boolean {
        return (this._readerIndex + size <= this._writerIndex)
    }

    // Append(x: number)
    // {
    //     this.EnsureWrite(1)
    //     this._bytes.writeUInt8(x, this._writerIndex++)
    // }

    WriteBool(b: boolean) {
        this.EnsureWrite(1)
        this._bytes.writeUInt8(b ? 1 : 0, this._writerIndex++)
    }

    ReadBool(): boolean {
        this.EnsureRead(1)
        return this._bytes[this._readerIndex++] != 0
    }

    WriteByte(x: number) {
        this.EnsureWrite(1)
        this._bytes[this._writerIndex++] = x
    }

    ReadByte(): number {
        this.EnsureRead(1)
        return this._bytes[this._readerIndex++]
    }

    WriteShort(x: number) {
        if (x >= 0) {
            if (x < 0x80) {
                this.EnsureWrite(1)
                this._bytes.writeUInt8(x, this._writerIndex++)
                return
            }
            else if (x < 0x4000) {
                this.EnsureWrite(2)
                const v = x | 0x8000
                this._bytes.writeUInt16BE(v, this._writerIndex)
                this._writerIndex += 2
                return
            }
        }
        this.EnsureWrite(4)
        this._bytes.writeUInt8(0xff, this._writerIndex)
        this._bytes.writeInt16BE(x, this._writerIndex + 1)
        this._writerIndex += 3
    }

    ReadShort(): number {
        this.EnsureRead(1)
        const buf = this._bytes
        const h = buf.readUInt8(this._readerIndex)
        if (h < 0x80) {
            this._readerIndex++
            return h
        }
        else if (h < 0xc0) {
            this.EnsureRead(2)
            const x = buf.readUInt16BE(this._readerIndex) & 0x3fff
            this._readerIndex += 2
            return x
        }
        else if ((h == 0xff)) {
            this.EnsureRead(3)
            const x = buf.readInt16BE(this._readerIndex + 1)
            this._readerIndex += 3
            return x
        }
        else {
            throw new Error()
        }
    }

    ReadFshort(): number {
        this.EnsureRead(2)
        const x = this._bytes.readInt16LE(this._readerIndex)
        this._readerIndex += 2
        return x
    }

    WriteFshort(x: number) {
        this.EnsureWrite(2)
        this._bytes.writeInt16LE(x, this._writerIndex)
        this._writerIndex += 2
    }


    WriteInt(x: number) {
        // 如果有修改，记得也把 EndWriteSegment改了
        // 0 111 1111
        // if (x < 0) {
        //     this.EnsureWrite(5)
        //     this._bytes.writeUInt8(0xf0, this._writerIndex)
        //     this._bytes.writeInt32BE(x, this._writerIndex + 1)
        //     this._writerIndex += 5
        // }
        // else if (x < 0x80) {
        //     this.EnsureWrite(1)
        //     this._bytes.writeUInt8(x, this._writerIndex++)
        // }
        // else if (x < 0x4000) // 10 11 1111, -
        // {
        //     this.EnsureWrite(2)
        //     this._bytes.writeInt32BE(x | 0x8000, this._writerIndex)
        //     this._writerIndex += 2
        // }
        // else if (x < 0x200000) // 110 1 1111, -,-
        // {
        //     // 这儿不是3，故意的，以大端方式写入4字节
        //     this.EnsureWrite(4)
        //     this._bytes.writeInt32BE((x | 0xc00000) << 8, this._writerIndex)
        //     this._writerIndex += 3
        // }
        // else if (x < 0x10000000) // 1110 1111,-,-,-
        // {
        //     this.EnsureWrite(4)
        //     this._bytes.writeInt32BE(x | 0xe0000000)
        //     this._writerIndex += 4
        // }
        // else {
        //     this.EnsureWrite(5)
        //     this._bytes.writeUInt8(0xf0, this._writerIndex)
        //     this._bytes.writeInt32BE(x, this._writerIndex + 1)
        //     this._writerIndex += 5
        // }

        if (x < 0) {
            this.EnsureWrite(5)
            this._bytes.writeUInt8(0xff, this._writerIndex)
            // if (x >= Number.MIN_SAFE_INTEGER) {
            //     this._bytes.writeInt32BE(x / f_2power32, this._writerIndex + 1)
            //     this._bytes.writeUInt32BE(x % f_2power32, this._writerIndex + 5)
            // } else {
            this._bytes.writeInt32BE(x, this._writerIndex + 1)
            // }
            this._writerIndex += 5
        } else if (x < 0x80) {
            this.EnsureWrite(1)
            this._bytes.writeUInt8(x, this._writerIndex++)
        }
        else if (x < 0x4000) // 10 11 1111, -
        {
            this.EnsureWrite(2)
            this._bytes.writeUInt16BE(x | 0x8000, this._writerIndex)
            this._writerIndex += 2
        }
        else if (x < 0x200000) // 110 1 1111, -,-
        {
            // 这儿不是3，故意的，以大端方式写入4字节
            this.EnsureWrite(4)
            this._bytes.writeInt32BE((x | 0xc00000) << 8, this._writerIndex)
            this._writerIndex += 3
        }
        else if (x < 0x10000000) // 1110 xxxx,-,-,-
        {
            this.EnsureWrite(4)
            this._bytes.writeInt32BE(x | 0xe0000000, this._writerIndex)
            this._writerIndex += 4
        }
        else {
            // 为了优化，这儿用8而不是5，因为我们会一次性写入一个long
            this.EnsureWrite(5)
            this._bytes.writeUInt8(0xf0, this._writerIndex)
            this._bytes.writeUInt32BE(x, this._writerIndex + 1)
            this._writerIndex += 5
        }
    }


    ReadInt(): number {
        const buf = this._bytes
        // ///
        // /// 警告！ 如有修改，记得调整 TryDeserializeInplaceOctets
        // this.EnsureRead(1)
        // const h = buf.readUInt8(this._readerIndex)
        // if (h < 0x80) {
        //     this._readerIndex++
        //     return h
        // }
        // else if (h < 0xc0) {
        //     this.EnsureRead(2)
        //     const x = buf.readUInt16BE(this._readerIndex) & 0x3fff
        //     this._readerIndex += 2
        //     return x
        // }
        // else if (h < 0xe0) {
        //     this.EnsureRead(3)
        //     const x = ((h & 0x1f) << 16) | (buf.readInt16BE(this._readerIndex + 1))
        //     this._readerIndex += 3
        //     return x
        // }
        // else if (h < 0xf0) {
        //     this.EnsureRead(4)
        //     const x = buf.readInt32BE(this._readerIndex) & 0x0fffffff
        //     this._readerIndex += 4
        //     return x
        // }
        // else {
        //     this.EnsureRead(5)
        //     const x = buf.readInt32BE(this._readerIndex + 1)
        //     this._readerIndex += 5
        //     return x
        // }

        this.EnsureRead(1)
        const h = buf.readUInt8(this._readerIndex)
        if (h < 0x80) {
            this._readerIndex++
            return h
        }
        else if (h < 0xc0) {
            this.EnsureRead(2)
            const x = buf.readUInt16BE(this._readerIndex) & 0x3fff
            this._readerIndex += 2
            return x
        }
        else if (h < 0xe0) {
            // console.log(`== read ${buf.readInt32BE(this._readerIndex)}`)
            this.EnsureRead(3)
            const x = ((h & 0x1f) << 16) | (buf.readUInt16BE(this._readerIndex + 1))
            this._readerIndex += 3
            return x
        }
        else if (h < 0xf0) {
            this.EnsureRead(4)
            // console.log(`== read ${buf.readInt32BE(this._readerIndex)}`)
            const x = buf.readInt32BE(this._readerIndex) & 0x0fffffff
            this._readerIndex += 4
            return x
        }
        else {
            this.EnsureRead(5)
            const x = buf.readInt32BE(this._readerIndex + 1)
            this._readerIndex += 5
            return x
        }
    }

    ReadFint(): number {
        this.EnsureRead(4)
        const x = this._bytes.readInt32LE()
        this._readerIndex += 4
        return x
    }


    WriteFint(x: number) {
        this.EnsureWrite(4)
        this._bytes.writeInt32LE(x, this._writerIndex)
        this._writerIndex += 4
    }

    WriteNumberAsLong(x: number) {
        if (x < 0) {
            this.EnsureWrite(9)
            this._bytes.writeUInt8(0xff, this._writerIndex)
            // if (x >= Number.MIN_SAFE_INTEGER) {
            //     this._bytes.writeInt32BE(x / f_2power32, this._writerIndex + 1)
            //     this._bytes.writeUInt32BE(x % f_2power32, this._writerIndex + 5)
            // } else {
            this._bytes.writeBigInt64BE(BigInt(x), this._writerIndex + 1)
            // }
            this._writerIndex += 9
        } else if (x < 0x80) {
            this.EnsureWrite(1)
            this._bytes.writeUInt8(x, this._writerIndex++)
        }
        else if (x < 0x4000) // 10 11 1111, -
        {
            this.EnsureWrite(2)
            this._bytes.writeUInt16BE(x | 0x8000, this._writerIndex)
            this._writerIndex += 2
        }
        else if (x < 0x200000) // 110 1 1111, -,-
        {
            // 这儿不是3，故意的，以大端方式写入4字节
            this.EnsureWrite(4)
            this._bytes.writeInt32BE((x | 0xc00000) << 8, this._writerIndex)
            this._writerIndex += 3
        }
        else if (x < 0x10000000) // 1110 xxxx,-,-,-
        {
            this.EnsureWrite(4)
            this._bytes.writeInt32BE(x | 0xe0000000, this._writerIndex)
            this._writerIndex += 4
        }
        else if (x < 0x800000000) // 1111 0xxx,-,-,-,-
        {
            // 为了优化，这儿用8而不是5，因为我们会一次性写入一个long
            this.EnsureWrite(8)
            this._bytes.writeUInt8((x / 0x100000000) | 0xf0, this._writerIndex)
            this._bytes.writeUInt32BE(x % 0x100000000, this._writerIndex + 1)
            this._writerIndex += 5
        }
        else if (x < 0x40000000000) // 1111 10xx, -,-,-,-,-
        {
            this.EnsureWrite(8)
            this._bytes.writeUInt16BE((x / 0x100000000) | 0xf800, this._writerIndex)
            this._bytes.writeUInt32BE(x % 0x100000000, this._writerIndex + 2)
            this._writerIndex += 6
        }
        else if (x < 0x200000000000) // 1111 110x, -,-,-,-,-,-
        {
            this.EnsureWrite(8)
            this._bytes.writeInt32BE(((x / 0x100000000) | 0xfc0000) << 8, this._writerIndex)
            this._bytes.writeUInt32BE(x % 0x100000000, this._writerIndex + 3)
            this._writerIndex += 7
        }
        // else /*if (x < 0x100000000000000)*/ // 1111 1110, - - - - - - -
        // {
        //     this.EnsureWrite(8)
        //     this._bytes.writeInt32BE((x / 0x100000000) | 0xfe000000, this._writerIndex)
        //     this._bytes.writeUInt32BE(x % 0x100000000, this._writerIndex + 4)
        //     this._writerIndex += 8
        // }
        else if (x <= Number.MAX_SAFE_INTEGER) // 1111 1110
        {
            this.EnsureWrite(8)
            this._bytes.writeInt32BE((x / 0x100000000) | 0xfe000000, this._writerIndex)
            this._bytes.writeUInt32BE(x % 0x100000000, this._writerIndex + 4)
            this._writerIndex += 8
        }
        else if (x < f_2power56) // 1111 1110
        {
            // 实际只占8位
            this.EnsureWrite(9)
            // this._bytes.writeUInt8(0xfe, this._writerIndex)
            // this._bytes.writeBigUInt64BE(BigInt(x) << BigInt(8), this._writerIndex)

            let n = BigInt(x)
            this._bytes.writeBigUInt64BE(n | (BigInt(0xfe) << BigInt(56)), this._writerIndex)
            // this._bytes.writeInt32BE(Number(n >> BigInt(32)) | 0xfe000000, this._writerIndex)
            // this._bytes.writeUInt32BE(Number(n & BigInt(0xffffffff)), this._writerIndex + 4)
            // this._bytes.writeUInt32BE((x >> 32) | 0xfe000000, this._writerIndex)
            // this._bytes.writeUInt32BE(x & 0xffffffff, this._writerIndex + 4)
            this._writerIndex += 8
        }
        else // 1111 1111
        {
            this.EnsureWrite(9)
            this._bytes.writeUInt8(0xff, this._writerIndex)
            this._bytes.writeBigInt64BE(BigInt(x), this._writerIndex + 1)
            // this._bytes.writeUInt32BE(x >> 32, this._writerIndex + 1)
            // this._bytes.writeUInt32BE(x & 0xffffffff, this._writerIndex + 5)
            this._writerIndex += 9
        }
    }

    ReadLongAsNumber(): number {
        const buf = this._bytes
        ///
        /// 警告！ 如有修改，记得调整 TryDeserializeInplaceOctets
        this.EnsureRead(1)
        const h = buf.readUInt8(this._readerIndex)
        if (h < 0x80) {
            this._readerIndex++
            return h
        }
        else if (h < 0xc0) {
            this.EnsureRead(2)
            const x = buf.readUInt16BE(this._readerIndex) & 0x3fff
            // console.log(`== read long :${x} index:${this._readerIndex}`)
            this._readerIndex += 2
            return x
        }
        else if (h < 0xe0) {
            // console.log(`== read ${buf.readInt32BE(this._readerIndex)}`)
            this.EnsureRead(3)
            const x = ((h & 0x1f) << 16) | (buf.readUInt16BE(this._readerIndex + 1))
            this._readerIndex += 3
            return x
        }
        else if (h < 0xf0) {
            this.EnsureRead(4)
            // console.log(`== read ${buf.readInt32BE(this._readerIndex)}`)
            const x = buf.readInt32BE(this._readerIndex) & 0x0fffffff
            this._readerIndex += 4
            return x
        }
        else if (h < 0xf8) {
            this.EnsureRead(5)
            const xl = buf.readUInt32BE(this._readerIndex + 1)
            const xh = h & 0x07
            this._readerIndex += 5
            return xh * 0x100000000 + xl
        }
        else if (h < 0xfc) {  // 1111 10xx  - - - - -
            this.EnsureRead(6)
            const xl = buf.readUInt32BE(this._readerIndex + 2)
            const xh = buf.readUInt16BE(this._readerIndex) & 0x3ff
            this._readerIndex += 6
            return xh * 0x100000000 + xl
        }
        else if (h < 0xfe) {
            this.EnsureRead(7)
            const xl = buf.readUInt32BE(this._readerIndex + 3)
            const xh = (buf.readUInt32BE(this._readerIndex) >> 8) & 0x1ffff
            this._readerIndex += 7
            return xh * 0x100000000 + xl
        }
        else if (h < 0xff) { // 1111 1110, - - - - - - -
            this.EnsureRead(8)
            // TODO 是否要对 < Number.MAX_SAFE_INTEGER 优化处理?
            const xl = buf.readUInt32BE(this._readerIndex + 4)
            const xh = buf.readUInt32BE(this._readerIndex) & 0xffffff
            this._readerIndex += 8
            return xh * f_2power32 + xl
        }
        else {
            this.EnsureRead(9)
            const x = buf.readBigInt64BE(this._readerIndex + 1)
            // const xl = buf.readUInt32BE(this._readerIndex + 5)
            // const xh = buf.readInt32BE(this._readerIndex + 1)
            this._readerIndex += 9
            return Number(x)
        }
    }

    WriteLong(n: bigint) {
        if (n < 0 || n >= f_2power56) {
            this.EnsureWrite(9)
            this._bytes.writeUInt8(0xff, this._writerIndex)
            this._bytes.writeBigInt64BE(n, this._writerIndex + 1)
            // this._bytes.writeUInt32BE(x >> 32, this._writerIndex + 1)
            // this._bytes.writeUInt32BE(x & 0xffffffff, this._writerIndex + 5)
            this._writerIndex += 9
            return
        }
        if (n > Number.MAX_SAFE_INTEGER) {
            this.EnsureWrite(8)
            this._bytes.writeBigUInt64BE(n | (BigInt(0xfe) << BigInt(56)), this._writerIndex)
            this._writerIndex += 8
            return
        }

        let x = Number(n)
        if (x < 0x80) {
            this.EnsureWrite(1)
            this._bytes.writeUInt8(x, this._writerIndex++)
        }
        else if (x < 0x4000) // 10 11 1111, -
        {
            this.EnsureWrite(2)
            this._bytes.writeUInt16BE(x | 0x8000, this._writerIndex)
            this._writerIndex += 2
        }
        else if (x < 0x200000) // 110 1 1111, -,-
        {
            // 这儿不是3，故意的，以大端方式写入4字节
            this.EnsureWrite(4)
            this._bytes.writeInt32BE((x | 0xc00000) << 8, this._writerIndex)
            this._writerIndex += 3
        }
        else if (x < 0x10000000) // 1110 xxxx,-,-,-
        {
            this.EnsureWrite(4)
            this._bytes.writeInt32BE(x | 0xe0000000, this._writerIndex)
            this._writerIndex += 4
        }
        else if (x < 0x800000000) // 1111 0xxx,-,-,-,-
        {
            // 为了优化，这儿用8而不是5，因为我们会一次性写入一个long
            this.EnsureWrite(8)
            this._bytes.writeUInt8((x / 0x100000000) | 0xf0, this._writerIndex)
            this._bytes.writeUInt32BE(x % 0x100000000, this._writerIndex + 1)
            this._writerIndex += 5
        }
        else if (x < 0x40000000000) // 1111 10xx, -,-,-,-,-
        {
            this.EnsureWrite(8)
            this._bytes.writeUInt16BE((x / 0x100000000) | 0xf800, this._writerIndex)
            this._bytes.writeUInt32BE(x % 0x100000000, this._writerIndex + 2)
            this._writerIndex += 6
        }
        else if (x < 0x200000000000) // 1111 110x, -,-,-,-,-,-
        {
            this.EnsureWrite(8)
            this._bytes.writeInt32BE(((x / 0x100000000) | 0xfc0000) << 8, this._writerIndex)
            this._bytes.writeUInt32BE(x % 0x100000000, this._writerIndex + 3)
            this._writerIndex += 7
        }
        else /*if (x < 0x100000000000000)*/ // 1111 1110, - - - - - - -
        {
            this.EnsureWrite(8)
            this._bytes.writeInt32BE((x / 0x100000000) | 0xfe000000, this._writerIndex)
            this._bytes.writeUInt32BE(x % 0x100000000, this._writerIndex + 4)
            this._writerIndex += 8
        }
    }

    ReadLong(): bigint {
        const buf = this._bytes
        ///
        /// 警告！ 如有修改，记得调整 TryDeserializeInplaceOctets
        this.EnsureRead(1)
        const h = buf.readUInt8(this._readerIndex)
        if (h < 0x80) {
            this._readerIndex++
            return BigInt(h)
        }
        else if (h < 0xc0) {
            this.EnsureRead(2)
            const x = buf.readUInt16BE(this._readerIndex) & 0x3fff
            this._readerIndex += 2
            return BigInt(x)
        }
        else if (h < 0xe0) {
            this.EnsureRead(3)
            const x = ((h & 0x1f) << 16) | (buf.readUInt16BE(this._readerIndex + 1))
            this._readerIndex += 3
            return BigInt(x)
        }
        else if (h < 0xf0) {
            this.EnsureRead(4)
            const x = buf.readInt32BE(this._readerIndex) & 0x0fffffff
            this._readerIndex += 4
            return BigInt(x)
        }
        else if (h < 0xf8) {
            this.EnsureRead(5)
            const xl = buf.readUInt32BE(this._readerIndex + 1)
            const xh = h & 0x07
            this._readerIndex += 5
            return BigInt(xh * 0x100000000 + xl)
        }
        else if (h < 0xfc) {  // 1111 10xx  - - - - -
            this.EnsureRead(6)
            const xl = buf.readUInt32BE(this._readerIndex + 2)
            const xh = buf.readUInt16BE(this._readerIndex) & 0x3ff
            this._readerIndex += 6
            return BigInt(xh * 0x100000000 + xl)
        }
        else if (h < 0xfe) {
            this.EnsureRead(7)
            const xl = buf.readUInt32BE(this._readerIndex + 3)
            const xh = (buf.readUInt32BE(this._readerIndex) >> 8) & 0x1ffff
            this._readerIndex += 7
            return BigInt(xh * 0x100000000 + xl)
        }
        else if (h < 0xff) { // 1111 1110, - - - - - - -
            this.EnsureRead(8)
            // TODO 是否要对 < Number.MAX_SAFE_INTEGER 优化处理?
            const xl = buf.readUInt32BE(this._readerIndex + 4)
            const xh = buf.readUInt32BE(this._readerIndex) & 0xffffff
            // console.log(`== read8  ${xl} ${xh}`)
            this._readerIndex += 8
            return (BigInt(xh) << BigInt(32)) | BigInt(xl)
        }
        else {
            this.EnsureRead(9)
            const x = buf.readBigInt64BE(this._readerIndex + 1)
            // const xl = buf.readUInt32BE(this._readerIndex + 5)
            // const xh = buf.readInt32BE(this._readerIndex + 1)
            this._readerIndex += 9
            return x
        }
    }


    WriteFlong(x: bigint) {
        this.EnsureWrite(8)
        this._bytes.writeBigInt64LE(x, this._writerIndex)
        this._writerIndex += 8
    }

    ReadFlong(): bigint {
        this.EnsureRead(8)
        let x = this._bytes.readBigInt64LE(this._readerIndex)
        this._readerIndex += 8
        return x
    }

    // const bool isLittleEndian = true
    WriteFloat(x: number) {
        this.EnsureWrite(4)
        this._bytes.writeFloatLE(x, this._writerIndex)
        this._writerIndex += 4
    }

    ReadFloat(): number {
        this.EnsureRead(4)
        const x = this._bytes.readFloatLE(this._readerIndex)
        this._readerIndex += 4
        return x
    }

    WriteDouble(x: number) {
        this.EnsureWrite(8)
        this._bytes.writeDoubleLE(x, this._writerIndex)

        this._writerIndex += 8
    }

    ReadDouble(): number {
        this.EnsureRead(8)
        const x = this._bytes.readDoubleLE(this._readerIndex)
        this._readerIndex += 8
        return x
    }

    WriteSize(n: number) {
        this.WriteInt(n)
    }

    ReadSize(): number {
        return this.ReadInt()
    }

    // marshal int
    // n -> (n << 1) ^ (n >> 31)
    // Read
    // (x >>> 1) ^ ((x << 31) >> 31)
    // (x >>> 1) ^ -(n&1)
    // WriteSint(x: number)
    // {
    //     WriteUint(((uint)x << 1) ^ ((uint)x >> 31))
    // }

    // ReadSint: number()
    // {
    //     x: number = ReadUint()
    //     return (int)((x >> 1) ^ ((x & 1) << 31))
    // }


    // marshal long
    // n -> (n << 1) ^ (n >> 63)
    // Read
    // (x >>> 1) ^((x << 63) >> 63)
    // (x >>> 1) ^ -(n&1L)
    // WriteSlong(long x)
    // {
    //     WriteUlong(((ulong)x << 1) ^ ((ulong)x >> 63))
    // }

    // long ReadSlong()
    // {
    //     long x = ReadLong()
    //     return ((long)((ulong)x >> 1) ^ ((x & 1) << 63))
    // }


    WriteString(x: string) {
        const n = Buffer.byteLength(x, "utf-8")
        this.WriteSize(n)
        if (n > 0) {
            this.EnsureWrite(n)
            this._bytes.fill(x, this._writerIndex, this._writerIndex + n, 'utf-8')
            this._writerIndex += n
        }
    }

    // // Uint8Array, [start, end)
    //  static Func < Uint8Array, int, int, string > StringCacheFinder { get set }

    ReadString(): string {
        const n = this.ReadSize()
        if (n > 0) {
            this.EnsureRead(n)
            const s = this._bytes.toString("utf-8", this._readerIndex, this._readerIndex + n)
            this._readerIndex += n
            return s
        }
        else {
            return ""
        }
    }

    WriteBytes(x: Uint8Array) {
        const n = x != null ? x.length : 0
        this.WriteSize(n)
        if (n > 0) {
            this.EnsureWrite(n)
            this._bytes.fill(x, this._writerIndex)
            this._writerIndex += n
        }
    }

    ReadBytes(): Uint8Array {
        const n = this.ReadSize()
        if (n > 0) {
            this.EnsureRead(n)
            const x = Buffer.from(this._bytes.slice(this._readerIndex, this._readerIndex + n))
            this._readerIndex += n
            return x
        }
        else {
            return ByteBuf.emptyBuff
        }
    }

    WriteArrayBuffer(b: ArrayBuffer) {
        this.WriteBytes(new Uint8Array(b))
    }

    ReadArrayBuffer(): ArrayBuffer {
        return this.ReadBytes().buffer
    }

    // 以下是一些特殊类型

    // WriteVector2(Vector2 x)
    // {
    //     WriteFloat(x.X)
    //     WriteFloat(x.Y)
    // }

    // Vector2 ReadVector2()
    // {
    //     float x = ReadFloat()
    //     float y = ReadFloat()
    //     return new Vector2(x, y)
    // }

    // WriteVector3(Vector3 x)
    // {
    //     WriteFloat(x.X)
    //     WriteFloat(x.Y)
    //     WriteFloat(x.Z)
    // }

    // Vector3 ReadVector3()
    // {
    //     float x = ReadFloat()
    //     float y = ReadFloat()
    //     float z = ReadFloat()
    //     return new Vector3(x, y, z)
    // }

    // WriteVector4(Vector4 x)
    // {
    //     WriteFloat(x.X)
    //     WriteFloat(x.Y)
    //     WriteFloat(x.Z)
    //     WriteFloat(x.W)
    // }

    // Vector4 ReadVector4()
    // {
    //     float x = ReadFloat()
    //     float y = ReadFloat()
    //     float z = ReadFloat()
    //     float w = ReadFloat()
    //     return new Vector4(x, y, z, w)
    // }



    SkipBytes() {
        const n = this.ReadSize()
        this.EnsureRead(n)
        this._readerIndex += n
    }


    WriteByteBufWithSize(o: ByteBuf) {
        const n: number = o.Size
        if (n > 0) {
            this.WriteSize(n)
            this.WriteBytesWithoutSize2(o._bytes, o._readerIndex, n)
        }
        else {
            this.WriteByte(0)
        }
    }

    WriteByteBufWithoutSize(o: ByteBuf) {
        const n: number = o.Size
        if (n > 0) {
            this.WriteBytesWithoutSize2(o._bytes, o._readerIndex, n)
        }
    }

    // bool TryReadByte(out byte x)
    // {
    //     if (CanRead(1)) {
    //         x = Bytes[this._readerIndex++]
    //         return true
    //     }
    //     else {
    //         x = 0
    //         return false
    //     }
    // }

    // EDeserializeError TryDeserializeInplaceByteBuf(maxSize: number, ByteBuf inplaceTempBody)
    // {
    //     //if (!CanRead(1)) { return EDeserializeError.NOT_ENOUGH }
    //     oldReadIndex: number = this._readerIndex
    //     bool commit = false
    //     try {
    //         n: number
    //         h: number = Bytes[this._readerIndex]
    //         if (h < 0x80) {
    //             this._readerIndex++
    //             n = h
    //         }
    //         else if (h < 0xc0) {
    //             if (!CanRead(2)) { return EDeserializeError.NOT_ENOUGH }
    //             n = ((h & 0x3f) << 8) | Bytes[this._readerIndex + 1]
    //             this._readerIndex += 2
    //         }
    //         else if (h < 0xe0) {
    //             if (!CanRead(3)) { return EDeserializeError.NOT_ENOUGH }
    //             n = ((h & 0x1f) << 16) | (Bytes[this._readerIndex + 1] << 8) | Bytes[this._readerIndex + 2]
    //             this._readerIndex += 3
    //         }
    //         else if (h < 0xf0) {
    //             if (!CanRead(4)) { return EDeserializeError.NOT_ENOUGH }
    //             n = ((h & 0x0f) << 24) | (Bytes[this._readerIndex + 1] << 16) | (Bytes[this._readerIndex + 2] << 8) | Bytes[this._readerIndex + 3]
    //             this._readerIndex += 4
    //         }
    //         else {
    //             return EDeserializeError.EXCEED_SIZE
    //         }

    //         if (n > maxSize) {
    //             return EDeserializeError.EXCEED_SIZE
    //         }
    //         if (Remaining < n) {
    //             return EDeserializeError.NOT_ENOUGH
    //         }

    //         inplaceReadIndex: number = this._readerIndex
    //         this._readerIndex += n

    //         inplaceTempBody.Replace(Bytes, inplaceReadIndex, this._readerIndex)
    //         commit = true
    //     }
    //     finally {
    //         if (!commit) {
    //             this._readerIndex = oldReadIndex
    //         }
    //     }

    //     return EDeserializeError.OK
    // }

    WriteRawTag1(b1: number) {
        this.EnsureWrite(1)
        this._bytes.writeUInt8(b1, this._writerIndex++)
    }

    WriteRawTag2(b1: number, b2: number) {
        this.EnsureWrite(2)
        this._bytes.writeUInt8(b1, this._writerIndex)
        this._bytes.writeUInt8(b2, this._writerIndex + 1)
        this._writerIndex += 2
    }

    WriteRawTag3(b1: number, b2: number, b3: number) {
        this.EnsureWrite(3)
        this._bytes.writeUInt8(b1, this._writerIndex)
        this._bytes.writeUInt8(b2, this._writerIndex + 1)
        this._bytes.writeUInt8(b3, this._writerIndex + 2)
        this._writerIndex += 3
    }

    // #region segment


    // BeginWriteSegment(out oldSize: number)
    // {
    //     oldSize = Size
    //     this.EnsureWrite(1)
    //     this._writerIndex += 1
    // }

    // EndWriteSegment(oldSize: number)
    // {
    //     startPos: number = this._readerIndex + oldSize
    //     segmentSize: number = this._writerIndex - startPos - 1

    //     // 0 111 1111
    //     if (segmentSize < 0x80) {
    //         Bytes[startPos] = (byte)segmentSize
    //     }
    //     else if (segmentSize < 0x4000) // 10 11 1111, -
    //     {
    //         this.EnsureWrite(1)
    //         Bytes[this._writerIndex] = Bytes[startPos + 1]
    //         Bytes[startPos + 1] = (byte)segmentSize

    //         Bytes[startPos] = (byte)((segmentSize >> 8) | 0x80)
    //         this._writerIndex += 1
    //     }
    //     else if (segmentSize < 0x200000) // 110 1 1111, -,-
    //     {
    //         this.EnsureWrite(2)
    //         Bytes[this._writerIndex + 1] = Bytes[startPos + 2]
    //         Bytes[startPos + 2] = (byte)segmentSize

    //         Bytes[this._writerIndex] = Bytes[startPos + 1]
    //         Bytes[startPos + 1] = (byte)(segmentSize >> 8)

    //         Bytes[startPos] = (byte)((segmentSize >> 16) | 0xc0)
    //         this._writerIndex += 2
    //     }
    //     else if (segmentSize < 0x10000000) // 1110 1111,-,-,-
    //     {
    //         this.EnsureWrite(3)
    //         Bytes[this._writerIndex + 2] = Bytes[startPos + 3]
    //         Bytes[startPos + 3] = (byte)segmentSize

    //         Bytes[this._writerIndex + 1] = Bytes[startPos + 2]
    //         Bytes[startPos + 2] = (byte)(segmentSize >> 8)

    //         Bytes[this._writerIndex] = Bytes[startPos + 1]
    //         Bytes[startPos + 1] = (byte)(segmentSize >> 16)

    //         Bytes[startPos] = (byte)((segmentSize >> 24) | 0xe0)
    //         this._writerIndex += 3
    //     }
    //     else {
    //         throw new SerializationException("exceed max segment size")
    //     }
    // }

    // ReadSegment(out startIndex: number, out segmentSize: number)
    // {
    //     this.EnsureRead(1)
    //     h: number = Bytes[this._readerIndex++]

    //     startIndex = this._readerIndex

    //     if (h < 0x80) {
    //         segmentSize = h
    //         this._readerIndex += segmentSize
    //     }
    //     else if (h < 0xc0) {
    //         this.EnsureRead(1)
    //         segmentSize = ((h & 0x3f) << 8) | Bytes[this._readerIndex]
    //         endPos: number = this._readerIndex + segmentSize
    //         Bytes[this._readerIndex] = Bytes[endPos]
    //         this._readerIndex += segmentSize + 1
    //     }
    //     else if (h < 0xe0) {
    //         this.EnsureRead(2)
    //         segmentSize = ((h & 0x1f) << 16) | ((int)Bytes[this._readerIndex] << 8) | Bytes[this._readerIndex + 1]
    //         endPos: number = this._readerIndex + segmentSize
    //         Bytes[this._readerIndex] = Bytes[endPos]
    //         Bytes[this._readerIndex + 1] = Bytes[endPos + 1]
    //         this._readerIndex += segmentSize + 2
    //     }
    //     else if (h < 0xf0) {
    //         this.EnsureRead(3)
    //         segmentSize = ((h & 0x0f) << 24) | ((int)Bytes[this._readerIndex] << 16) | ((int)Bytes[this._readerIndex + 1] << 8) | Bytes[this._readerIndex + 2]
    //         endPos: number = this._readerIndex + segmentSize
    //         Bytes[this._readerIndex] = Bytes[endPos]
    //         Bytes[this._readerIndex + 1] = Bytes[endPos + 1]
    //         Bytes[this._readerIndex + 2] = Bytes[endPos + 2]
    //         this._readerIndex += segmentSize + 3
    //     }
    //     else {
    //         throw new SerializationException("exceed max size")
    //     }
    //     if (this._readerIndex > this._writerIndex) {
    //         throw new SerializationException("segment data not enough")
    //     }
    // }

    // ReadSegment(ByteBuf buf)
    // {
    //     ReadSegment(out startPos: number, out var size)
    //     buf.Bytes = Bytes
    //     buf.this._readerIndex = startPos
    //     buf.this._writerIndex = startPos + size
    // }

    // EnterSegment(out SegmentSaveState saveState)
    // {
    //     ReadSegment(out startPos: number, out size: number)

    //     saveState = new SegmentSaveState(this._readerIndex, this._writerIndex)
    //     this._readerIndex = startPos
    //     this._writerIndex = startPos + size
    // }

    // LeaveSegment(SegmentSaveState saveState)
    // {
    //     this._readerIndex = saveState.this._readerIndex
    //     this._writerIndex = saveState.this._writerIndex
    // }


}
