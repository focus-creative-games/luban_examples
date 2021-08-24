
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



namespace cfg.item
{

public sealed partial class Clothes :  item.ItemExtra 
{
    public Clothes(JSONNode _json)  : base(_json) 
    {
        { if(!_json["attack"].IsNumber) { throw new SerializationException(); }  Attack = _json["attack"]; }
        { if(!_json["hp"].IsNumber) { throw new SerializationException(); }  Hp = _json["hp"]; }
        { if(!_json["energy_limit"].IsNumber) { throw new SerializationException(); }  EnergyLimit = _json["energy_limit"]; }
        { if(!_json["energy_resume"].IsNumber) { throw new SerializationException(); }  EnergyResume = _json["energy_resume"]; }
    }

    public Clothes(int id, int attack, long hp, int energy_limit, int energy_resume )  : base(id) 
    {
        this.Attack = attack;
        this.Hp = hp;
        this.EnergyLimit = energy_limit;
        this.EnergyResume = energy_resume;
    }

    public static Clothes DeserializeClothes(JSONNode _json)
    {
        return new item.Clothes(_json);
    }

    public readonly int Attack;
    public readonly long Hp;
    public readonly int EnergyLimit;
    public readonly int EnergyResume;

    public const int ID = 1659907149;
    public override int GetTypeId() => ID;

    public override void Resolve(Dictionary<string, object> _tables)
    {
        base.Resolve(_tables);
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "Attack:" + Attack + ","
        + "Hp:" + Hp + ","
        + "EnergyLimit:" + EnergyLimit + ","
        + "EnergyResume:" + EnergyResume + ","
        + "}";
    }
    }
}
