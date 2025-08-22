
import ByteBuf from "./luban/ByteBuf";
import * as cfg from './schema/schema';


const {ccclass, property} = cc._decorator;
@ccclass
export default class ConfigManager extends cc.Component {
    public static tables:cfg.Tables = null;
    private static dataMap = new Map<string, Uint8Array>();
    public static jsonFileNames:string[] = [];

    onLoad() {
        this.loadAllConfig();
    }

    public loadConfigName(): void
    {
        ConfigManager.jsonFileNames = cfg.Tables.getTableNames()
    }

    public loadAllConfig()
    {
        this.loadConfigName();
        let promises:Promise<unknown>[] = [];
        for(let curFileName of ConfigManager.jsonFileNames)
        {
            
            let promise=new Promise((resolve, reject) => {
                cc.resources.load(curFileName, cc.BufferAsset, (err, data) => {
                    resolve(data);
                });
            });
            promise.then((data: cc.BufferAsset) =>
            {
                var dataView = new DataView(data["_buffer"]);
                console.assert(ArrayBuffer.isView(dataView), "类型不正确");

                if (dataView) {
                    ConfigManager.dataMap.set(curFileName, new Uint8Array(dataView.buffer.slice(0, dataView.buffer.byteLength)));
                } else {
                    console.error("静态配置加载失败" + curFileName);
                }
            });
            promises.push(promise);
        }
        Promise.all(promises).then((values)=>
        {
            console.log("静态配置加载完成");
            ConfigManager.tables = new cfg.Tables(this.getFileData);
            for (let item of ConfigManager.tables.TbItem.getDataList()) {
                console.log(item);
            }
        });
    }
    private getFileData(fileName:string): ByteBuf
    {
        if (ConfigManager.dataMap.has(fileName)) {
            return new ByteBuf(ConfigManager.dataMap.get(fileName));
        }
        return null;
    }
}