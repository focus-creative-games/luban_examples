
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



namespace cfg.blueprint
{

public sealed partial class Field :  Bright.Config.BeanBase 
{
    public Field(JSONNode _json) 
    {
        { if(!_json["name"].IsString) { throw new SerializationException(); }  Name = _json["name"]; }
        { if(!_json["type"].IsString) { throw new SerializationException(); }  Type = _json["type"]; }
        { if(!_json["desc"].IsString) { throw new SerializationException(); }  Desc = _json["desc"]; }
    }

    public Field(string name, string type, string desc ) 
    {
        this.Name = name;
        this.Type = type;
        this.Desc = desc;
    }

    public static Field DeserializeField(JSONNode _json)
    {
        return new blueprint.Field(_json);
    }

    public readonly string Name;
    public readonly string Type;
    public readonly string Desc;

    public const int ID = 1694158271;
    public override int GetTypeId() => ID;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "Name:" + Name + ","
        + "Type:" + Type + ","
        + "Desc:" + Desc + ","
        + "}";
    }
    }
}
