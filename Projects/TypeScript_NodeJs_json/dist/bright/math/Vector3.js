"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
class Vector3 {
    constructor(x = 0, y = 0, z = 0) {
        this.x = x;
        this.y = y;
        this.z = z;
    }
    static deserializeFrom(buf) {
        var v = new Vector3();
        v.deserialize(buf);
        return v;
    }
    static deserializeFromJson(json) {
        let x = json['x'];
        let y = json['y'];
        let z = json['z'];
        if (x == null || y == null || z == null) {
            throw new Error();
        }
        return new Vector3(x, y, z);
    }
    serialize(_buf_) {
        _buf_.WriteFloat(this.x);
        _buf_.WriteFloat(this.y);
        _buf_.WriteFloat(this.z);
    }
    deserialize(buf) {
        this.x = buf.ReadFloat();
        this.y = buf.ReadFloat();
        this.z = buf.ReadFloat();
    }
}
exports.default = Vector3;
//# sourceMappingURL=Vector3.js.map