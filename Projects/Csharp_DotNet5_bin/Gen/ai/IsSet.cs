
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;



namespace cfg.ai
{

public sealed partial class IsSet :  ai.KeyQueryOperator 
{
    public IsSet(ByteBuf _buf)  : base(_buf) 
    {
    }

    public IsSet()  : base() 
    {
    }

    public static IsSet DeserializeIsSet(ByteBuf _buf)
    {
        return new ai.IsSet(_buf);
    }


    public const int ID = 1635350898;
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
