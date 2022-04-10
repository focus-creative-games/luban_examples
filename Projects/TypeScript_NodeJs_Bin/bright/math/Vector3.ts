import ByteBuf from "../serialization/ByteBuf"
import ISerializable from "../serialization/ISerializable"

export default class Vector3 implements ISerializable{
    static deserializeFrom(buf: ByteBuf): Vector3 {
        var v = new Vector3()
        v.deserialize(buf)
        return v
    }
    
    static deserializeFromJson(json: any): Vector3 {
        let x = json['x']
        let y = json['y']
        let z = json['z']
        if (x == null || y == null || z == null) {
            throw new Error()
        }
        return new Vector3(x, y, z)
    }

    x: number
    y: number
    z: number

    constructor(x: number = 0, y: number = 0, z: number = 0) {
        this.x = x
        this.y = y
        this.z = z
    }

    serialize(_buf_: ByteBuf) {
        _buf_.WriteFloat(this.x)
        _buf_.WriteFloat(this.y)
        _buf_.WriteFloat(this.z)
    }

    deserialize(buf: ByteBuf) {
        this.x = buf.ReadFloat()
        this.y = buf.ReadFloat()
        this.z = buf.ReadFloat()
    }
}