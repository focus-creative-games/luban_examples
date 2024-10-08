
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg.item;

import luban.*;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;


/**
 * 道具
 */
public final class Item extends AbstractBean {
    public Item(JsonObject _buf) { 
        id = _buf.get("id").getAsInt();
        name = _buf.get("name").getAsString();
        majorType = _buf.get("major_type").getAsInt();
        minorType = _buf.get("minor_type").getAsInt();
        maxPileNum = _buf.get("max_pile_num").getAsInt();
        quality = _buf.get("quality").getAsInt();
        icon = _buf.get("icon").getAsString();
        iconBackgroud = _buf.get("icon_backgroud").getAsString();
        iconMask = _buf.get("icon_mask").getAsString();
        desc = _buf.get("desc").getAsString();
        showOrder = _buf.get("show_order").getAsInt();
    }

    public static Item deserialize(JsonObject _buf) {
            return new cfg.item.Item(_buf);
    }

    /**
     * 道具id
     */
    public final int id;
    public final String name;
    public final int majorType;
    public final int minorType;
    public final int maxPileNum;
    public final int quality;
    public final String icon;
    public final String iconBackgroud;
    public final String iconMask;
    public final String desc;
    public final int showOrder;

    public static final int __ID__ = 2107285806;
    
    @Override
    public int getTypeId() { return __ID__; }

    @Override
    public String toString() {
        return "{ "
        + "id:" + id + ","
        + "name:" + name + ","
        + "majorType:" + majorType + ","
        + "minorType:" + minorType + ","
        + "maxPileNum:" + maxPileNum + ","
        + "quality:" + quality + ","
        + "icon:" + icon + ","
        + "iconBackgroud:" + iconBackgroud + ","
        + "iconMask:" + iconMask + ","
        + "desc:" + desc + ","
        + "showOrder:" + showOrder + ","
        + "}";
    }
}

