import ByteBuf from "../serialization/ByteBuf"
import ISerializable from "../serialization/ISerializable"

export default class Vector2 implements ISerializable  {

    static deserializeFrom(buf: ByteBuf): Vector2 {
        var v = new Vector2()
        v.deserialize(buf)
        return v
    }

    static deserializeFromJson(json: any): Vector2 {
        let x = json['x']
        let y = json['y']
        if (x == null || y == null) {
            throw new Error()
        }
        return new Vector2(x, y)
    }

    x: number
    y: number
    constructor(x: number = 0, y: number = 0) {
        this.x = x
        this.y = y
    }

    serialize(_buf_: ByteBuf) {
        _buf_.WriteFloat(this.x)
        _buf_.WriteFloat(this.y)
    }

    deserialize(buf: ByteBuf) {
        this.x = buf.ReadFloat()
        this.y = buf.ReadFloat()
    }
}