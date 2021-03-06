
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Bright.Serialization;
using System.Collections.Generic;
using System.Text.Json;



namespace cfg.ai
{
   
public sealed partial class BlackboardKey :  Bright.Config.BeanBase 
{
    public BlackboardKey(JsonElement _buf) 
    {
        Name = _buf.GetProperty("name").GetString();
        Desc = _buf.GetProperty("desc").GetString();
        IsStatic = _buf.GetProperty("is_static").GetBoolean();
        Type = (ai.EKeyType)_buf.GetProperty("type").GetInt32();
        TypeClassName = _buf.GetProperty("type_class_name").GetString();
    }

    public BlackboardKey(string name, string desc, bool is_static, ai.EKeyType type, string type_class_name ) 
    {
        this.Name = name;
        this.Desc = desc;
        this.IsStatic = is_static;
        this.Type = type;
        this.TypeClassName = type_class_name;
    }

    public static BlackboardKey DeserializeBlackboardKey(JsonElement _buf)
    {
        return new ai.BlackboardKey(_buf);
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

