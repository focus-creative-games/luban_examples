
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.test;

import com.google.gson.JsonElement;


public final class TbExcelFromJson {
    private final java.util.HashMap<Integer, cfg.test.ExcelFromJson> _dataMap;
    private final java.util.ArrayList<cfg.test.ExcelFromJson> _dataList;
    
    public TbExcelFromJson(JsonElement __json__) {
        _dataMap = new java.util.HashMap<Integer, cfg.test.ExcelFromJson>();
        _dataList = new java.util.ArrayList<cfg.test.ExcelFromJson>();
        
        for(com.google.gson.JsonElement _e_ : __json__.getAsJsonArray()) {
            cfg.test.ExcelFromJson _v;
            _v = new cfg.test.ExcelFromJson(_e_.getAsJsonObject());
            _dataList.add(_v);
            _dataMap.put(_v.x4, _v);
        }
    }

    public java.util.HashMap<Integer, cfg.test.ExcelFromJson> getDataMap() { return _dataMap; }
    public java.util.ArrayList<cfg.test.ExcelFromJson> getDataList() { return _dataList; }

    public cfg.test.ExcelFromJson get(int key) { return _dataMap.get(key); }

    public void resolve(java.util.HashMap<String, Object> _tables) {
        for(cfg.test.ExcelFromJson v : _dataList) {
            v.resolve(_tables);
        }
    }

}