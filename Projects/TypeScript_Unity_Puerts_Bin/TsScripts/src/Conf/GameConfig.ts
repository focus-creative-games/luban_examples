import {cfg} from 'Gen/Cfg/Types'
import {Bright} from 'csharp'
import {JsHelpers} from 'csharp'

export default class GameConfig {
    static readonly Ins = new GameConfig()

    load(gameConfDir: string) {
        let tables = new cfg.Tables(f => JsHelpers.LoadFromFile(gameConfDir, f))
        console.log(tables)
        console.log("== load succ ==")
    }
}