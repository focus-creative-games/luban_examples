
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



public final class ProbabilityBonus extends cfg.bonus.Bonus {
    public ProbabilityBonus(JsonObject __json__) { 
        super(__json__);
        { com.google.gson.JsonArray _json0_ = __json__.get("bonuses").getAsJsonArray(); int _n = _json0_.size(); bonuses = new cfg.bonus.ProbabilityBonusInfo[_n]; int _index=0; for(JsonElement __e : _json0_) { cfg.bonus.ProbabilityBonusInfo __v;  __v = new cfg.bonus.ProbabilityBonusInfo(__e.getAsJsonObject());  bonuses[_index++] = __v; }   }
    }

    public ProbabilityBonus(cfg.bonus.ProbabilityBonusInfo[] bonuses ) {
        super();
        this.bonuses = bonuses;
    }

    public static ProbabilityBonus deserializeProbabilityBonus(JsonObject __json__) {
        return new ProbabilityBonus(__json__);
    }

    public final cfg.bonus.ProbabilityBonusInfo[] bonuses;

    public static final int ID = 359783161;

    @Override
    public int getTypeId() { return ID; }

    @Override
    public void resolve(java.util.HashMap<String, Object> _tables) {
        super.resolve(_tables);
        for(cfg.bonus.ProbabilityBonusInfo _e : bonuses) { if (_e != null) _e.resolve(_tables); }
    }

    @Override
    public String toString() {
        return "{ "
        + "bonuses:" + bonuses + ","
        + "}";
    }
}
