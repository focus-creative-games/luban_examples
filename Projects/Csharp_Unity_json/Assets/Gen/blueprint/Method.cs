
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

public abstract partial class Method :  Bright.Config.BeanBase 
{
    public Method(JSONNode _json) 
    {
        { if(!_json["name"].IsString) { throw new SerializationException(); }  Name = _json["name"]; }
        { if(!_json["desc"].IsString) { throw new SerializationException(); }  Desc = _json["desc"]; }
        { if(!_json["is_static"].IsBoolean) { throw new SerializationException(); }  IsStatic = _json["is_static"]; }
        { if(!_json["return_type"].IsString) { throw new SerializationException(); }  ReturnType = _json["return_type"]; }
        { var _json1 = _json["parameters"]; if(!_json1.IsArray) { throw new SerializationException(); } Parameters = new System.Collections.Generic.List<blueprint.ParamInfo>(_json1.Count); foreach(JSONNode __e in _json1.Children) { blueprint.ParamInfo __v;  { if(!__e.IsObject) { throw new SerializationException(); }  __v = blueprint.ParamInfo.DeserializeParamInfo(__e); }  Parameters.Add(__v); }   }
    }

    public Method(string name, string desc, bool is_static, string return_type, System.Collections.Generic.List<blueprint.ParamInfo> parameters ) 
    {
        this.Name = name;
        this.Desc = desc;
        this.IsStatic = is_static;
        this.ReturnType = return_type;
        this.Parameters = parameters;
    }

    public static Method DeserializeMethod(JSONNode _json)
    {
        string type = _json["__type__"];
        switch (type)
        {
            case "AbstraceMethod": return new blueprint.AbstraceMethod(_json);
            case "ExternalMethod": return new blueprint.ExternalMethod(_json);
            case "BlueprintMethod": return new blueprint.BlueprintMethod(_json);
            default: throw new SerializationException();
        }
    }

    public readonly string Name;
    public readonly string Desc;
    public readonly bool IsStatic;
    public readonly string ReturnType;
    public readonly System.Collections.Generic.List<blueprint.ParamInfo> Parameters;


    public virtual void Resolve(Dictionary<string, object> _tables)
    {
        foreach(var _e in Parameters) { _e?.Resolve(_tables); }
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "Name:" + Name + ","
        + "Desc:" + Desc + ","
        + "IsStatic:" + IsStatic + ","
        + "ReturnType:" + ReturnType + ","
        + "Parameters:" + Bright.Common.StringUtil.CollectionToString(Parameters) + ","
        + "}";
    }
    }
}
