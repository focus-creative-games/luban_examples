
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg.test;

import luban.*;
import com.google.gson.JsonElement;


public final class TbPath {
    private final java.util.HashMap<Integer, cfg.test.Path> _dataMap;
    private final java.util.ArrayList<cfg.test.Path> _dataList;
    
    public TbPath(JsonElement _buf) {
        _dataMap = new java.util.HashMap<Integer, cfg.test.Path>();
        _dataList = new java.util.ArrayList<cfg.test.Path>();
        
        for (com.google.gson.JsonElement _e_ : _buf.getAsJsonArray()) {
            cfg.test.Path _v;
            _v = cfg.test.Path.deserialize(_e_.getAsJsonObject());
            _dataList.add(_v);
            _dataMap.put(_v.id, _v);
        }
    }

    public java.util.HashMap<Integer, cfg.test.Path> getDataMap() { return _dataMap; }
    public java.util.ArrayList<cfg.test.Path> getDataList() { return _dataList; }

    public cfg.test.Path get(int key) { return _dataMap.get(key); }

}
