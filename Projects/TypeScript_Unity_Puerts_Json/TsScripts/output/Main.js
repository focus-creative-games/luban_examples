"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const cfg = require("Gen/Cfg/Types");
const csharp_1 = require("csharp");
let tables = new cfg.Tables(f => {
    let data = csharp_1.JsHelpers.ReadAllText(csharp_1.UnityEngine.Application.dataPath + "/../../GenerateDatas/json", f + ".json");
    return JSON.parse(data);
});
console.log(tables.TbGlobalConfig.bagCapacity);
console.log(tables.TbItem.get(1).name);
console.log("== load succ ==");
