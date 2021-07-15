
import {cfg} from "./Gen/Types";

var fs = require('fs');


console.log('Hello world');

function loader(file: string): any {
    let data = fs.readFileSync('config_data/' + file + '.json', 'utf8');
    return JSON.parse(data);
}

//let tables = new cfg.Tables(loader);
let tables = new cfg.Tables(loader);
console.log(tables);

