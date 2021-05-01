import {cfg} from 'Gen/Cfg/Types'
import {JsHelpers} from 'csharp'

export default class GameConfig {
    static readonly Ins = new GameConfig()

    load(gameConfDir: string) {
        let tables = new cfg.Tables(f => {
            let data = JsHelpers.ReadAllText(gameConfDir, f);
            return JSON.parse(data);
        })
        console.log(tables)
        console.log("==== load succ ====")
    }
}