
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



namespace cfg.mail
{

public sealed class SystemMail :  Bright.Config.BeanBase 
{
    public SystemMail(JsonElement _json) 
    {
        Id = _json.GetProperty("id").GetInt32();
        Title = _json.GetProperty("title").GetString();
        Sender = _json.GetProperty("sender").GetString();
        Content = _json.GetProperty("content").GetString();
        { var _json0 = _json.GetProperty("award"); Award = new System.Collections.Generic.List<int>(_json0.GetArrayLength()); foreach(JsonElement __e in _json0.EnumerateArray()) { int __v;  __v = __e.GetInt32();  Award.Add(__v); }   }
    }

    public SystemMail(int id, string title, string sender, string content, System.Collections.Generic.List<int> award ) 
    {
        this.Id = id;
        this.Title = title;
        this.Sender = sender;
        this.Content = content;
        this.Award = award;
    }

    public static SystemMail DeserializeSystemMail(JsonElement _json)
    {
        return new mail.SystemMail(_json);
    }

    public int Id { get; private set; }
    public string Title { get; private set; }
    public string Sender { get; private set; }
    public string Content { get; private set; }
    public System.Collections.Generic.List<int> Award { get; private set; }

    public const int __ID__ = 1214073149;
    public override int GetTypeId() => __ID__;

    public  void Resolve(Dictionary<string, object> _tables)
    {
    }

    public  void TranslateText(System.Func<string, string, string> translator)
    {
    }

    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "Title:" + Title + ","
        + "Sender:" + Sender + ","
        + "Content:" + Content + ","
        + "Award:" + Bright.Common.StringUtil.CollectionToString(Award) + ","
        + "}";
    }
    }
}
