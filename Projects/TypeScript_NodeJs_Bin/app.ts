
import ByteBuf from "./luban/ByteBuf";
import * as cfg from "./Gen/schema";
import {readFileSync} from 'fs'

function loader(file: string): any {
    let data: any = readFileSync('../GenerateDatas/bytes/' + file + '.bytes');
    return new ByteBuf(data)
}

//let tables = new cfg.Tables(loader);
let tables = new cfg.Tables(loader);
console.log(tables.TbFullTypes.getDataList()[0]);

