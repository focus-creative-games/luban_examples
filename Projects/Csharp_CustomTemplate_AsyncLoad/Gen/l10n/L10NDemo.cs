
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



namespace cfg.l10n
{

public sealed class L10NDemo :  Bright.Config.BeanBase 
{
    public L10NDemo(JsonElement _json) 
    {
        Id = _json.GetProperty("id").GetInt32();
        Text_l10n_key = _json.GetProperty("text").GetProperty("key").GetString();Text = _json.GetProperty("text").GetProperty("text").GetString();
    }

    public L10NDemo(int id, string text ) 
    {
        this.Id = id;
        this.Text = text;
    }

    public static L10NDemo DeserializeL10NDemo(JsonElement _json)
    {
        return new l10n.L10NDemo(_json);
    }

    public int Id { get; private set; }
    public string Text { get; private set; }
    public string Text_l10n_key { get; }

    public const int __ID__ = -331195887;
    public override int GetTypeId() => __ID__;

    public  void Resolve(Dictionary<string, object> _tables)
    {
    }

    public  void TranslateText(System.Func<string, string, string> translator)
    {
        Text = translator(Text_l10n_key, Text);
    }

    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "Text:" + Text + ","
        + "}";
    }
    }
}
