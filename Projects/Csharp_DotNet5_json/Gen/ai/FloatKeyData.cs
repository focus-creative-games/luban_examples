
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
   
public sealed partial class FloatKeyData :  ai.KeyData 
{
    public FloatKeyData(JsonElement _buf)  : base(_buf) 
    {
        Value = _buf.GetProperty("value").GetSingle();
    }

    public FloatKeyData(float value )  : base() 
    {
        this.Value = value;
    }

    public static FloatKeyData DeserializeFloatKeyData(JsonElement _buf)
    {
        return new ai.FloatKeyData(_buf);
    }

    public readonly float Value;

    public const int ID = -719747885;
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

