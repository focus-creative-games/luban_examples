
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

/// <summary>
/// 
/// </summary>
public sealed partial class IsNotSet :  ai.KeyQueryOperator 
{
    public IsNotSet(JSONNode _json)  : base(_json) 
    {
    }

    public IsNotSet()  : base() 
    {
    }

    public static IsNotSet DeserializeIsNotSet(JSONNode _json)
    {
        return new ai.IsNotSet(_json);
    }


    public const int ID = 790736255;
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
        + "}";
    }
    }
}
