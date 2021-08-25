
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.ai;

import com.google.gson.JsonElement;


public final class TbBlackboard {
    private final java.util.HashMap<String, cfg.ai.Blackboard> _dataMap;
    private final java.util.ArrayList<cfg.ai.Blackboard> _dataList;
    
    public TbBlackboard(JsonElement __json__) {
        _dataMap = new java.util.HashMap<String, cfg.ai.Blackboard>();
        _dataList = new java.util.ArrayList<cfg.ai.Blackboard>();
        
        for(var _e_ : __json__.getAsJsonArray()) {
            cfg.ai.Blackboard _v;
            _v = new cfg.ai.Blackboard(_e_.getAsJsonObject());
            _dataList.add(_v);
            _dataMap.put(_v.name, _v);
        }
    }

    public java.util.HashMap<String, cfg.ai.Blackboard> getDataMap() { return _dataMap; }
    public java.util.ArrayList<cfg.ai.Blackboard> getDataList() { return _dataList; }

    public cfg.ai.Blackboard get(String key) { return _dataMap.get(key); }

    public void resolve(java.util.HashMap<String, Object> _tables) {
        for(cfg.ai.Blackboard v : _dataList) {
            v.resolve(_tables);
        }
    }

}