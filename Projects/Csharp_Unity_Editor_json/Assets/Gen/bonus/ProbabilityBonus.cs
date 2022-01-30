//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;
using SimpleJSON;



namespace editor.cfg.bonus
{

public sealed partial class ProbabilityBonus :  bonus.Bonus 
{
    public ProbabilityBonus()
    {
            Bonuses = System.Array.Empty<bonus.ProbabilityBonusInfo>();
    }

    public override void LoadJson(SimpleJSON.JSONObject _json)
    {
        base.LoadJson(_json);
        { 
            var _fieldJson = _json["bonuses"];
            if (_fieldJson != null)
            {
                if(!_fieldJson.IsArray) { throw new SerializationException(); } int _n = _fieldJson.Count; Bonuses = new bonus.ProbabilityBonusInfo[_n]; int _index=0; foreach(SimpleJSON.JSONNode __e in _fieldJson.Children) { bonus.ProbabilityBonusInfo __v;  if(!__e.IsObject) { throw new SerializationException(); }  __v = bonus.ProbabilityBonusInfo.LoadJsonProbabilityBonusInfo(__e);  Bonuses[_index++] = __v; }  
            }
        }
        
    }

    public override void SaveJson(SimpleJSON.JSONObject _json)
    {        
        base.SaveJson(_json);
        {

            if (Bonuses == null) { throw new System.ArgumentNullException(); }
            { var __cjson = new JSONArray(); foreach(var _e in Bonuses) { { var __bjson = new JSONObject();  bonus.ProbabilityBonusInfo.SaveJsonProbabilityBonusInfo(_e, __bjson); __cjson["null"] = __bjson; } } _json["bonuses"] = __cjson; }
        }
    }

    public static ProbabilityBonus LoadJsonProbabilityBonus(SimpleJSON.JSONNode _json)
    {
        ProbabilityBonus obj = new bonus.ProbabilityBonus();
        obj.LoadJson((SimpleJSON.JSONObject)_json);
        return obj;
    }
        
    public static void SaveJsonProbabilityBonus(ProbabilityBonus _obj, SimpleJSON.JSONNode _json)
    {
        _obj.SaveJson((SimpleJSON.JSONObject)_json);
    }

    public bonus.ProbabilityBonusInfo[] Bonuses { get; set; }

}
}