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



namespace cfg.bonus
{

public sealed class OneItems :  bonus.Bonus 
{
    public OneItems(JsonElement _json)  : base(_json) 
    {
        { var _json0 = _json.GetProperty("items"); int _n = _json0.GetArrayLength(); Items = new int[_n]; int _index=0; foreach(JsonElement __e in _json0.EnumerateArray()) { int __v;  __v = __e.GetInt32();  Items[_index++] = __v; }   }
    }

    public OneItems(int[] items )  : base() 
    {
        this.Items = items;
    }

    public static OneItems DeserializeOneItems(JsonElement _json)
    {
        return new bonus.OneItems(_json);
    }

    public int[] Items { get; private set; }

    public const int __ID__ = 400179721;
    public override int GetTypeId() => __ID__;

    public override void Resolve(Dictionary<string, object> _tables)
    {
        base.Resolve(_tables);
    }

    public override void TranslateText(System.Func<string, string, string> translator)
    {
        base.TranslateText(translator);
    }

    public override string ToString()
    {
        return "{ "
        + "Items:" + Bright.Common.StringUtil.CollectionToString(Items) + ","
        + "}";
    }
    }
}
