"use strict";

import * as Types from"./Gen/schema.js";


import * as fs from 'fs';

function loader(file) {
    let data = fs.readFileSync('../GenerateDatas/json/' + file + '.json', 'utf8');
    return JSON.parse(data);
}


let tables = new Types.Tables(loader);
console.log(tables);