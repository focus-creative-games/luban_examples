import ByteBuf from "../serialization/ByteBuf"
import ISerializable from "../serialization/ISerializable"

export default class Vector4 implements ISerializable {
    static deserializeFrom(buf: ByteBuf): Vector4 {
        var v = new Vector4()
        v.deserialize(buf)
        return v
    }
    
    static deserializeFromJson(json: any): Vector4 {
        let x = json['x']
        let y = json['y']
        let z = json['z']
        let w = json['w']
        if (x == null || y == null || z == null || w == null) {
            throw new Error()
        }
        return new Vector4(x, y, z, w)
    }

    x: number
    y: number
    z: number
    w: number

    constructor(x: number = 0, y: number = 0, z: number = 0, w: number = 0) {
        this.x = x
        this.y = y
        this.z = z
        this.w = w
    }

    serialize(_buf_: ByteBuf) {
        _buf_.WriteFloat(this.x)
        _buf_.WriteFloat(this.y)
        _buf_.WriteFloat(this.z)
        _buf_.WriteFloat(this.w)
    }

    deserialize(buf: ByteBuf) {
        this.x = buf.ReadFloat()
        this.y = buf.ReadFloat()
        this.z = buf.ReadFloat()
        this.z = buf.ReadFloat()
    }
}