
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.test;

import com.google.gson.JsonElement;


public final class TbTestString {
    private final java.util.HashMap<Integer, cfg.test.TestString> _dataMap;
    private final java.util.ArrayList<cfg.test.TestString> _dataList;
    
    public TbTestString(JsonElement __json__) {
        _dataMap = new java.util.HashMap<Integer, cfg.test.TestString>();
        _dataList = new java.util.ArrayList<cfg.test.TestString>();
        
        for(com.google.gson.JsonElement _e_ : __json__.getAsJsonArray()) {
            cfg.test.TestString _v;
            _v = new cfg.test.TestString(_e_.getAsJsonObject());
            _dataList.add(_v);
            _dataMap.put(_v.id, _v);
        }
    }

    public java.util.HashMap<Integer, cfg.test.TestString> getDataMap() { return _dataMap; }
    public java.util.ArrayList<cfg.test.TestString> getDataList() { return _dataList; }

    public cfg.test.TestString get(int key) { return _dataMap.get(key); }

    public void resolve(java.util.HashMap<String, Object> _tables) {
        for(cfg.test.TestString v : _dataList) {
            v.resolve(_tables);
        }
    }

}