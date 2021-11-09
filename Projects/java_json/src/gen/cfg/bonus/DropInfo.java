
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg.bonus;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;



public final class DropInfo {
    public DropInfo(JsonObject __json__) { 
        id = __json__.get("id").getAsInt();
        desc = __json__.get("desc").getAsString();
        { com.google.gson.JsonArray _json0_ = __json__.get("client_show_items").getAsJsonArray(); clientShowItems = new java.util.ArrayList<cfg.bonus.ShowItemInfo>(_json0_.size()); for(JsonElement __e : _json0_) { cfg.bonus.ShowItemInfo __v;  __v = new cfg.bonus.ShowItemInfo(__e.getAsJsonObject());  clientShowItems.add(__v); }   }
        bonus = cfg.bonus.Bonus.deserializeBonus(__json__.get("bonus").getAsJsonObject());
    }

    public DropInfo(int id, String desc, java.util.ArrayList<cfg.bonus.ShowItemInfo> client_show_items, cfg.bonus.Bonus bonus ) {
        this.id = id;
        this.desc = desc;
        this.clientShowItems = client_show_items;
        this.bonus = bonus;
    }

    public static DropInfo deserializeDropInfo(JsonObject __json__) {
        return new DropInfo(__json__);
    }

    public final int id;
    public final String desc;
    public final java.util.ArrayList<cfg.bonus.ShowItemInfo> clientShowItems;
    public final cfg.bonus.Bonus bonus;


    public void resolve(java.util.HashMap<String, Object> _tables) {
        for(cfg.bonus.ShowItemInfo _e : clientShowItems) { if (_e != null) _e.resolve(_tables); }
        if (bonus != null) {bonus.resolve(_tables);}
    }

    @Override
    public String toString() {
        return "{ "
        + "id:" + id + ","
        + "desc:" + desc + ","
        + "clientShowItems:" + clientShowItems + ","
        + "bonus:" + bonus + ","
        + "}";
    }
}
