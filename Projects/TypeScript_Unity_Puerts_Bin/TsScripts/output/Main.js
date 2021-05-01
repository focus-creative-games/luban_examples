"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const AppConfig_1 = require("Conf/AppConfig");
const GameConfig_1 = require("Conf/GameConfig");
console.log("data  path:" + AppConfig_1.default.configPath);
GameConfig_1.default.Ins.load(AppConfig_1.default.configPath);
//# sourceMappingURL=Main.js.map