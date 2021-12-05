
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

public abstract class KeyData :  Bright.Config.BeanBase 
{
    public KeyData(JsonElement _json) 
    {
    }

    public KeyData() 
    {
    }

    public static KeyData DeserializeKeyData(JsonElement _json)
    {
        switch (_json.GetProperty("__type__").GetString())
        {
            case "FloatKeyData": return new ai.FloatKeyData(_json);
            case "IntKeyData": return new ai.IntKeyData(_json);
            case "StringKeyData": return new ai.StringKeyData(_json);
            case "BlackboardKeyData": return new ai.BlackboardKeyData(_json);
            default: throw new SerializationException();
        }
    }



    public virtual void Resolve(Dictionary<string, object> _tables)
    {
    }

    public virtual void TranslateText(System.Func<string, string, string> translator)
    {
    }

    public override string ToString()
    {
        return "{ "
        + "}";
    }
    }
}
