"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
class Vector4 {
    constructor(x = 0, y = 0, z = 0, w = 0) {
        this.x = x;
        this.y = y;
        this.z = z;
        this.w = w;
    }
    static deserializeFrom(buf) {
        var v = new Vector4();
        v.deserialize(buf);
        return v;
    }
    static deserializeFromJson(json) {
        let x = json['x'];
        let y = json['y'];
        let z = json['z'];
        let w = json['w'];
        if (x == null || y == null || z == null || w == null) {
            throw new Error();
        }
        return new Vector4(x, y, z, w);
    }
    serialize(_buf_) {
        _buf_.WriteFloat(this.x);
        _buf_.WriteFloat(this.y);
        _buf_.WriteFloat(this.z);
        _buf_.WriteFloat(this.w);
    }
    deserialize(buf) {
        this.x = buf.ReadFloat();
        this.y = buf.ReadFloat();
        this.z = buf.ReadFloat();
        this.z = buf.ReadFloat();
    }
}
exports.default = Vector4;
