import { _decorator, AssetManager, Component, JsonAsset, path, resources } from 'cc';
import { Tables } from './schema/schema';

type JsonLoader = ConstructorParameters<typeof Tables>[0]

const { ccclass, property } = _decorator;
@ccclass('ConfigManager')
export default class ConfigManager extends Component {
    public static tables: Tables = null;

    onLoad() {
        this.loadAllConfig();
    }

    public async loadAllConfig() {
        const loader = await this.createLoader(resources, "./");
        console.log("静态配置加载完成");
        ConfigManager.tables = new Tables(loader);
        for (let item of ConfigManager.tables.TbItem.getDataList()) {
            console.log(item);
        }
    }

    private createLoader(bundle: AssetManager.Bundle, jsonPath: string): Promise<JsonLoader> {
        return new Promise((resolve, reject) => {
            bundle.loadDir(jsonPath, JsonAsset, (err, assets) => {
                if (err) {
                    reject(err);
                    return;
                }
                resolve((fileName: string) => {
                    return bundle.get(path.join(jsonPath, fileName), JsonAsset)?.json;
                })
            })
        })
    }
}
