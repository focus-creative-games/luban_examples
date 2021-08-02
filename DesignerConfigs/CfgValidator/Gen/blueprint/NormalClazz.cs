
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

/// <summary>
/// 
/// </summary>
public sealed partial class NormalClazz :  blueprint.Clazz 
{
    public NormalClazz(JsonElement _json)  : base(_json) 
    {
        IsAbstract = _json.GetProperty("is_abstract").GetBoolean();
        { var _json0 = _json.GetProperty("fields"); Fields = new System.Collections.Generic.List<blueprint.Field>(_json0.GetArrayLength()); foreach(JsonElement __e in _json0.EnumerateArray()) { blueprint.Field __v;  __v =  blueprint.Field.DeserializeField(__e);  Fields.Add(__v); }   }
    }

    public NormalClazz(string name, string desc, System.Collections.Generic.List<blueprint.Clazz> parents, System.Collections.Generic.List<blueprint.Method> methods, bool is_abstract, System.Collections.Generic.List<blueprint.Field> fields )  : base(name,desc,parents,methods) 
    {
        this.IsAbstract = is_abstract;
        this.Fields = fields;
    }

    public static NormalClazz DeserializeNormalClazz(JsonElement _json)
    {
        return new blueprint.NormalClazz(_json);
    }

    /// <summary>
    /// 
    /// </summary>
    public readonly bool IsAbstract;
    /// <summary>
    /// 
    /// </summary>
    public readonly System.Collections.Generic.List<blueprint.Field> Fields;

    public const int ID = -2073576778;
    public override int GetTypeId() => ID;

    public override void Resolve(Dictionary<string, object> _tables)
    {
        base.Resolve(_tables);
        foreach(var _e in Fields) { _e?.Resolve(_tables); }
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "Name:" + Name + ","
        + "Desc:" + Desc + ","
        + "Parents:" + Bright.Common.StringUtil.CollectionToString(Parents) + ","
        + "Methods:" + Bright.Common.StringUtil.CollectionToString(Methods) + ","
        + "IsAbstract:" + IsAbstract + ","
        + "Fields:" + Bright.Common.StringUtil.CollectionToString(Fields) + ","
        + "}";
    }
    }
}

