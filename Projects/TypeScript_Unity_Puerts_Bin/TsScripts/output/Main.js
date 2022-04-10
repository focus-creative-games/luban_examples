"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const cfg = require("Gen/Cfg/Types");
const csharp_1 = require("csharp");
let tables = new cfg.Tables(f => csharp_1.JsHelpers.LoadFromFile(csharp_1.UnityEngine.Application.dataPath + "/../../GenerateDatas/bin", f + ".bytes"));
console.log(tables.TbGlobalConfig.bagCapacity);
console.log(tables.TbItem.get(1).name);
console.log("== load succ ==");
