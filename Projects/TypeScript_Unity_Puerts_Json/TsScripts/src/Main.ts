import {cfg} from 'Gen/Cfg/Types'
import {JsHelpers, UnityEngine} from 'csharp'

let tables = new cfg.Tables(f => {
    let data = JsHelpers.ReadAllText(UnityEngine.Application.dataPath + "/../ConfigData", f);
    return JSON.parse(data);
})

console.log(tables.TbGlobalConfig.bagCapacity)
console.log(tables.TbItem.get(1).name)
console.log("== load succ ==")