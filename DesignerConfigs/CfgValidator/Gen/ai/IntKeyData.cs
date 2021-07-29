
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

/// <summary>
/// 
/// </summary>
public sealed partial class IntKeyData :  ai.KeyData 
{
    public IntKeyData(JsonElement _buf)  : base(_buf) 
    {
        Value = _buf.GetProperty("value").GetInt32();
    }

    public IntKeyData(int value )  : base() 
    {
        this.Value = value;
    }

    public static IntKeyData DeserializeIntKeyData(JsonElement _buf)
    {
        return new ai.IntKeyData(_buf);
    }

    /// <summary>
    /// 
    /// </summary>
    public readonly int Value;

    public const int ID = -342751904;
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
        + "Value:" + Value + ","
        + "}";
    }
    }
}

