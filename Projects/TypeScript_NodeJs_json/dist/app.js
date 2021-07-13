"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const Types_1 = require("./Gen/Types");
var fs = require('fs');
console.log('Hello world');
function loader(file) {
    let data = fs.readFileSync('config_data/' + file, 'utf8');
    return JSON.parse(data);
}
//let tables = new cfg.Tables(loader);
let tables = new Types_1.cfg.Tables(loader);
console.log(tables);
//# sourceMappingURL=app.js.map