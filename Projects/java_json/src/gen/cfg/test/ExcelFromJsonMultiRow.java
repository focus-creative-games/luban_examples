
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.test;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;



public final class ExcelFromJsonMultiRow {
    public ExcelFromJsonMultiRow(JsonObject __json__) { 
        id = __json__.get("id").getAsInt();
        x = __json__.get("x").getAsInt();
        { var _json0_ = __json__.get("items").getAsJsonArray(); items = new java.util.ArrayList<cfg.test.TestRow>(_json0_.size()); for(JsonElement __e : _json0_) { cfg.test.TestRow __v;  __v = new cfg.test.TestRow(__e.getAsJsonObject());  items.add(__v); }   }
    }

    public ExcelFromJsonMultiRow(int id, int x, java.util.ArrayList<cfg.test.TestRow> items ) {
        this.id = id;
        this.x = x;
        this.items = items;
    }

    public static ExcelFromJsonMultiRow deserializeExcelFromJsonMultiRow(JsonObject __json__) {
        return new ExcelFromJsonMultiRow(__json__);
    }

    public final int id;
    public final int x;
    public final java.util.ArrayList<cfg.test.TestRow> items;


    public void resolve(java.util.HashMap<String, Object> _tables) {
        for(cfg.test.TestRow _e : items) { if (_e != null) _e.resolve(_tables); }
    }

    @Override
    public String toString() {
        return "{ "
        + "id:" + id + ","
        + "x:" + x + ","
        + "items:" + items + ","
        + "}";
    }
}