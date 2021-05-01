import AppConf from 'Conf/AppConfig'
import GameConfig from 'Conf/GameConfig'

import {Bright} from 'csharp'

console.log("data  path:" + AppConf.configPath)
GameConfig.Ins.load(AppConf.configPath)


