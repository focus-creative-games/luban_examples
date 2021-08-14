"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const Types_1 = require("Gen/Cfg/Types");
const csharp_1 = require("csharp");
let tables = new Types_1.cfg.Tables(f => csharp_1.JsHelpers.LoadFromFile(csharp_1.UnityEngine.Application.dataPath + "/../../GenerateDatas/bin", f + ".bin"));
console.log(tables.TbGlobalConfig.bagCapacity);
console.log(tables.TbItem.get(1).name);
console.log("== load succ ==");
