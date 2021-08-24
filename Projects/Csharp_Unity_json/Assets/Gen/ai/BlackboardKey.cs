
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



namespace cfg.ai
{

public sealed partial class BlackboardKey :  Bright.Config.BeanBase 
{
    public BlackboardKey(JSONNode _json) 
    {
        { if(!_json["name"].IsString) { throw new SerializationException(); }  Name = _json["name"]; }
        { if(!_json["desc"].IsString) { throw new SerializationException(); }  Desc = _json["desc"]; }
        { if(!_json["is_static"].IsBoolean) { throw new SerializationException(); }  IsStatic = _json["is_static"]; }
        { if(!_json["type"].IsNumber) { throw new SerializationException(); }  Type = (ai.EKeyType)_json["type"].AsInt; }
        { if(!_json["type_class_name"].IsString) { throw new SerializationException(); }  TypeClassName = _json["type_class_name"]; }
    }

    public BlackboardKey(string name, string desc, bool is_static, ai.EKeyType type, string type_class_name ) 
    {
        this.Name = name;
        this.Desc = desc;
        this.IsStatic = is_static;
        this.Type = type;
        this.TypeClassName = type_class_name;
    }

    public static BlackboardKey DeserializeBlackboardKey(JSONNode _json)
    {
        return new ai.BlackboardKey(_json);
    }

    public readonly string Name;
    public readonly string Desc;
    public readonly bool IsStatic;
    public readonly ai.EKeyType Type;
    public readonly string TypeClassName;

    public const int ID = -511559886;
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
        + "Desc:" + Desc + ","
        + "IsStatic:" + IsStatic + ","
        + "Type:" + Type + ","
        + "TypeClassName:" + TypeClassName + ","
        + "}";
    }
    }
}
