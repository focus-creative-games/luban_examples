
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



namespace cfg.blueprint
{

public abstract class Clazz :  Bright.Config.BeanBase 
{
    public Clazz(JsonElement _json) 
    {
        Name = _json.GetProperty("name").GetString();
        Desc = _json.GetProperty("desc").GetString();
        { var _json0 = _json.GetProperty("parents"); Parents = new System.Collections.Generic.List<blueprint.Clazz>(_json0.GetArrayLength()); foreach(JsonElement __e in _json0.EnumerateArray()) { blueprint.Clazz __v;  __v =  blueprint.Clazz.DeserializeClazz(__e);  Parents.Add(__v); }   }
        { var _json0 = _json.GetProperty("methods"); Methods = new System.Collections.Generic.List<blueprint.Method>(_json0.GetArrayLength()); foreach(JsonElement __e in _json0.EnumerateArray()) { blueprint.Method __v;  __v =  blueprint.Method.DeserializeMethod(__e);  Methods.Add(__v); }   }
    }

    public Clazz(string name, string desc, System.Collections.Generic.List<blueprint.Clazz> parents, System.Collections.Generic.List<blueprint.Method> methods ) 
    {
        this.Name = name;
        this.Desc = desc;
        this.Parents = parents;
        this.Methods = methods;
    }

    public static Clazz DeserializeClazz(JsonElement _json)
    {
        switch (_json.GetProperty("__type__").GetString())
        {
            case "Interface": return new blueprint.Interface(_json);
            case "NormalClazz": return new blueprint.NormalClazz(_json);
            case "EnumClazz": return new blueprint.EnumClazz(_json);
            default: throw new SerializationException();
        }
    }

    public string Name { get; private set; }
    public string Desc { get; private set; }
    public System.Collections.Generic.List<blueprint.Clazz> Parents { get; private set; }
    public System.Collections.Generic.List<blueprint.Method> Methods { get; private set; }


    public virtual void Resolve(Dictionary<string, object> _tables)
    {
        foreach(var _e in Parents) { _e?.Resolve(_tables); }
        foreach(var _e in Methods) { _e?.Resolve(_tables); }
    }

    public virtual void TranslateText(System.Func<string, string, string> translator)
    {
        foreach(var _e in Parents) { _e?.TranslateText(translator); }
        foreach(var _e in Methods) { _e?.TranslateText(translator); }
    }

    public override string ToString()
    {
        return "{ "
        + "Name:" + Name + ","
        + "Desc:" + Desc + ","
        + "Parents:" + Bright.Common.StringUtil.CollectionToString(Parents) + ","
        + "Methods:" + Bright.Common.StringUtil.CollectionToString(Methods) + ","
        + "}";
    }
    }
}
