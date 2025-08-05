"use strict";

import ByteBuf from "./luban/ByteBuf.js";
import * as cfg from "./Gen/schema.js";
import {readFileSync} from 'fs'

function loader(file) {
    let data = readFileSync('../GenerateDatas/bytes/' + file + '.bytes');
    return new ByteBuf(data)
}

//let tables = new cfg.Tables(loader);
let tables = new cfg.Tables(loader);
console.log(tables);