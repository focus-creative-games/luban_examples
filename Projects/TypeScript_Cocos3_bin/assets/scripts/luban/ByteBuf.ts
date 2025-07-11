import b from "buffer/index.js";
const { Buffer } = b;

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

    get capacity(): number { return this._bytes.length }
    get size(): number { return this._writerIndex - this._readerIndex }
    get empty(): boolean { return this._writerIndex <= this._readerIndex }
    get notEmpty(): boolean { return this._writerIndex > this._readerIndex }

    getBytesNotSafe(): Buffer { return this._bytes }

    addReadIndex(add: number) {
        this._readerIndex += add
    }

    private static emptyBytes: Uint8Array = new Uint8Array()

    copyData(): Uint8Array {
        const n = this.remaining
        if (n > 0) {
            return new Uint8Array(this._bytes.buffer.slice(this._readerIndex, this._writerIndex))
        } else {
            return ByteBuf.emptyBytes
        }
    }

    get remaining(): number { return this._writerIndex - this._readerIndex }

    discardReadBytes() {
        this._bytes.copyWithin(0, this._readerIndex, this._writerIndex)
        this._writerIndex -= this._readerIndex
        this._readerIndex = 0
    }


    clear() {
        this._readerIndex = this._writerIndex = 0
    }


    private static propSize(initSize: number, needSize: number): number {
        for (let i = Math.max(initSize, MIN_CAPACITY); i <<= 1;) {
            if (i >= needSize) {
                return i
            }
        }
    }

    private ensureRead(size: number) {
        if (this._readerIndex + size > this._writerIndex) {
            throw new Error()
        }
    }


    private canRead(size: number): boolean {
        return (this._readerIndex + size <= this._writerIndex)
    }

    readBool(): boolean {
        this.ensureRead(1)
        return this._bytes[this._readerIndex++] != 0
    }

    readByte(): number {
        this.ensureRead(1)
        return this._bytes[this._readerIndex++]
    }

    readShort(): number {
        this.ensureRead(1)
        const buf = this._bytes
        const h = buf.readUInt8(this._readerIndex)
        if (h < 0x80) {
            this._readerIndex++
            return h
        }
        else if (h < 0xc0) {
            this.ensureRead(2)
            const x = buf.readUInt16BE(this._readerIndex) & 0x3fff
            this._readerIndex += 2
            return x
        }
        else if ((h == 0xff)) {
            this.ensureRead(3)
            const x = buf.readInt16BE(this._readerIndex + 1)
            this._readerIndex += 3
            return x
        }
        else {
            throw new Error()
        }
    }

    readInt(): number {
        const buf = this._bytes

        this.ensureRead(1)
        const h = buf.readUInt8(this._readerIndex)
        if (h < 0x80) {
            this._readerIndex++
            return h
        }
        else if (h < 0xc0) {
            this.ensureRead(2)
            const x = buf.readUInt16BE(this._readerIndex) & 0x3fff
            this._readerIndex += 2
            return x
        }
        else if (h < 0xe0) {
            // console.log(`== read ${buf.readInt32BE(this._readerIndex)}`)
            this.ensureRead(3)
            const x = ((h & 0x1f) << 16) | (buf.readUInt16BE(this._readerIndex + 1))
            this._readerIndex += 3
            return x
        }
        else if (h < 0xf0) {
            this.ensureRead(4)
            // console.log(`== read ${buf.readInt32BE(this._readerIndex)}`)
            const x = buf.readInt32BE(this._readerIndex) & 0x0fffffff
            this._readerIndex += 4
            return x
        }
        else {
            this.ensureRead(5)
            const x = buf.readInt32BE(this._readerIndex + 1)
            this._readerIndex += 5
            return x
        }
    }

    readFint(): number {
        this.ensureRead(4)
        const x = this._bytes.readInt32LE()
        this._readerIndex += 4
        return x
    }

    readLongAsNumber(): number {
        const buf = this._bytes
        ///
        /// 警告！ 如有修改，记得调整 TryDeserializeInplaceOctets
        this.ensureRead(1)
        const h = buf.readUInt8(this._readerIndex)
        if (h < 0x80) {
            this._readerIndex++
            return h
        }
        else if (h < 0xc0) {
            this.ensureRead(2)
            const x = buf.readUInt16BE(this._readerIndex) & 0x3fff
            // console.log(`== read long :${x} index:${this._readerIndex}`)
            this._readerIndex += 2
            return x
        }
        else if (h < 0xe0) {
            // console.log(`== read ${buf.readInt32BE(this._readerIndex)}`)
            this.ensureRead(3)
            const x = ((h & 0x1f) << 16) | (buf.readUInt16BE(this._readerIndex + 1))
            this._readerIndex += 3
            return x
        }
        else if (h < 0xf0) {
            this.ensureRead(4)
            // console.log(`== read ${buf.readInt32BE(this._readerIndex)}`)
            const x = buf.readInt32BE(this._readerIndex) & 0x0fffffff
            this._readerIndex += 4
            return x
        }
        else if (h < 0xf8) {
            this.ensureRead(5)
            const xl = buf.readUInt32BE(this._readerIndex + 1)
            const xh = h & 0x07
            this._readerIndex += 5
            return xh * 0x100000000 + xl
        }
        else if (h < 0xfc) {  // 1111 10xx  - - - - -
            this.ensureRead(6)
            const xl = buf.readUInt32BE(this._readerIndex + 2)
            const xh = buf.readUInt16BE(this._readerIndex) & 0x3ff
            this._readerIndex += 6
            return xh * 0x100000000 + xl
        }
        else if (h < 0xfe) {
            this.ensureRead(7)
            const xl = buf.readUInt32BE(this._readerIndex + 3)
            const xh = (buf.readUInt32BE(this._readerIndex) >> 8) & 0x1ffff
            this._readerIndex += 7
            return xh * 0x100000000 + xl
        }
        else if (h < 0xff) { // 1111 1110, - - - - - - -
            this.ensureRead(8)
            // TODO 是否要对 < Number.MAX_SAFE_INTEGER 优化处理?
            const xl = buf.readUInt32BE(this._readerIndex + 4)
            const xh = buf.readUInt32BE(this._readerIndex) & 0xffffff
            this._readerIndex += 8
            return xh * f_2power32 + xl
        }
        else {
            this.ensureRead(9)
            const x = buf.readBigInt64BE(this._readerIndex + 1)
            // const xl = buf.readUInt32BE(this._readerIndex + 5)
            // const xh = buf.readInt32BE(this._readerIndex + 1)
            this._readerIndex += 9
            return Number(x)
        }
    }

    readLong(): bigint {
        const buf = this._bytes
        ///
        this.ensureRead(1)
        const h = buf.readUInt8(this._readerIndex)
        if (h < 0x80) {
            this._readerIndex++
            return BigInt(h)
        }
        else if (h < 0xc0) {
            this.ensureRead(2)
            const x = buf.readUInt16BE(this._readerIndex) & 0x3fff
            this._readerIndex += 2
            return BigInt(x)
        }
        else if (h < 0xe0) {
            this.ensureRead(3)
            const x = ((h & 0x1f) << 16) | (buf.readUInt16BE(this._readerIndex + 1))
            this._readerIndex += 3
            return BigInt(x)
        }
        else if (h < 0xf0) {
            this.ensureRead(4)
            const x = buf.readInt32BE(this._readerIndex) & 0x0fffffff
            this._readerIndex += 4
            return BigInt(x)
        }
        else if (h < 0xf8) {
            this.ensureRead(5)
            const xl = buf.readUInt32BE(this._readerIndex + 1)
            const xh = h & 0x07
            this._readerIndex += 5
            return BigInt(xh * 0x100000000 + xl)
        }
        else if (h < 0xfc) {  // 1111 10xx  - - - - -
            this.ensureRead(6)
            const xl = buf.readUInt32BE(this._readerIndex + 2)
            const xh = buf.readUInt16BE(this._readerIndex) & 0x3ff
            this._readerIndex += 6
            return BigInt(xh * 0x100000000 + xl)
        }
        else if (h < 0xfe) {
            this.ensureRead(7)
            const xl = buf.readUInt32BE(this._readerIndex + 3)
            const xh = (buf.readUInt32BE(this._readerIndex) >> 8) & 0x1ffff
            this._readerIndex += 7
            return BigInt(xh * 0x100000000 + xl)
        }
        else if (h < 0xff) { // 1111 1110, - - - - - - -
            this.ensureRead(8)
            // TODO 是否要对 < Number.MAX_SAFE_INTEGER 优化处理?
            const xl = buf.readUInt32BE(this._readerIndex + 4)
            const xh = buf.readUInt32BE(this._readerIndex) & 0xffffff
            // console.log(`== read8  ${xl} ${xh}`)
            this._readerIndex += 8
            return (BigInt(xh) << BigInt(32)) | BigInt(xl)
        }
        else {
            this.ensureRead(9)
            const x = buf.readBigInt64BE(this._readerIndex + 1)
            // const xl = buf.readUInt32BE(this._readerIndex + 5)
            // const xh = buf.readInt32BE(this._readerIndex + 1)
            this._readerIndex += 9
            return x
        }
    }

    readFloat(): number {
        this.ensureRead(4)
        const x = this._bytes.readFloatLE(this._readerIndex)
        this._readerIndex += 4
        return x
    }

    readDouble(): number {
        this.ensureRead(8)
        const x = this._bytes.readDoubleLE(this._readerIndex)
        this._readerIndex += 8
        return x
    }

    readSize(): number {
        return this.readInt()
    }

    // marshal int
    // n -> (n << 1) ^ (n >> 31)
    // read
    // (x >>> 1) ^ ((x << 31) >> 31)
    // (x >>> 1) ^ -(n&1)
    // WriteSint(x: number)
    // {
    //     WriteUint(((uint)x << 1) ^ ((uint)x >> 31))
    // }

    // readSint: number()
    // {
    //     x: number = readUint()
    //     return (int)((x >> 1) ^ ((x & 1) << 31))
    // }


    // marshal long
    // n -> (n << 1) ^ (n >> 63)
    // read
    // (x >>> 1) ^((x << 63) >> 63)
    // (x >>> 1) ^ -(n&1L)
    // WriteSlong(long x)
    // {
    //     WriteUlong(((ulong)x << 1) ^ ((ulong)x >> 63))
    // }

    // long readSlong()
    // {
    //     long x = readLong()
    //     return ((long)((ulong)x >> 1) ^ ((x & 1) << 63))
    // }

    // // Uint8Array, [start, end)
    //  static Func < Uint8Array, int, int, string > StringCacheFinder { get set }

    readString(): string {
        const n = this.readSize()
        if (n > 0) {
            this.ensureRead(n)
            const s = this._bytes.toString("utf-8", this._readerIndex, this._readerIndex + n)
            this._readerIndex += n
            return s
        }
        else {
            return ""
        }
    }

    readBytes(): Uint8Array {
        const n = this.readSize()
        if (n > 0) {
            this.ensureRead(n)
            const x = Buffer.from(this._bytes.slice(this._readerIndex, this._readerIndex + n))
            this._readerIndex += n
            return x
        }
        else {
            return ByteBuf.emptyBuff
        }
    }

    readArrayBuffer(): ArrayBuffer {
        return this.readBytes().buffer
    }

    SkipBytes() {
        const n = this.readSize()
        this.ensureRead(n)
        this._readerIndex += n
    }

}
