"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const Types_1 = require("Gen/Cfg/Types");
const csharp_1 = require("csharp");
class GameConfig {
    load(gameConfDir) {
        let tables = new Types_1.cfg.Tables(f => csharp_1.JsHelpers.LoadFromFile(gameConfDir, f));
        console.log(tables);
        console.log("== load succ ==");
    }
}
exports.default = GameConfig;
GameConfig.Ins = new GameConfig();
//# sourceMappingURL=GameConfig.js.map