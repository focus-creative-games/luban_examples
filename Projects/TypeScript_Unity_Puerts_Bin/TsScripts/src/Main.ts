import {cfg} from 'Gen/Cfg/Types'
import {JsHelpers, UnityEngine} from 'csharp'

let tables = new cfg.Tables(f => JsHelpers.LoadFromFile(UnityEngine.Application.dataPath + "/../ConfigData", f))
console.log(tables.TbGlobalConfig.bagCapacity)
console.log("== load succ ==")