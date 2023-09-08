
import * as cfg from "./Gen/schema";

var fs = require('fs');


console.log('Hello world');

function loader(file: string): any {
    let data = fs.readFileSync('../GenerateDatas/json/' + file + '.json', 'utf8');
    return JSON.parse(data);
}

//let tables = new cfg.Tables(loader);
let tables = new cfg.Tables(loader);
console.log(tables.TbFullTypes.getDataList()[0]);

