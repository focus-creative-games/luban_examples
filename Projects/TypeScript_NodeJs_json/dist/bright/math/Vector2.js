"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
class Vector2 {
    constructor(x = 0, y = 0) {
        this.x = x;
        this.y = y;
    }
    static deserializeFrom(buf) {
        var v = new Vector2();
        v.deserialize(buf);
        return v;
    }
    static deserializeFromJson(json) {
        let x = json['x'];
        let y = json['y'];
        if (x == null || y == null) {
            throw new Error();
        }
        return new Vector2(x, y);
    }
    serialize(_buf_) {
        _buf_.WriteFloat(this.x);
        _buf_.WriteFloat(this.y);
    }
    deserialize(buf) {
        this.x = buf.ReadFloat();
        this.y = buf.ReadFloat();
    }
}
exports.default = Vector2;
//# sourceMappingURL=Vector2.js.map