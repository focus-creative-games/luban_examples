"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const Types_1 = require("Gen/Cfg/Types");
const csharp_1 = require("csharp");
let tables = new Types_1.cfg.Tables(f => csharp_1.JsHelpers.LoadFromFile(csharp_1.UnityEngine.Application.dataPath + "/../ConfigData", f));
console.log(tables.TbGlobalConfig.bagCapacity);
console.log("== load succ ==");
//# sourceMappingURL=Main.js.map