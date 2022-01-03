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



namespace cfg.test
{

public sealed class ExcelFromJsonMultiRow :  Bright.Config.BeanBase 
{
    public ExcelFromJsonMultiRow(JsonElement _json) 
    {
        Id = _json.GetProperty("id").GetInt32();
        X = _json.GetProperty("x").GetInt32();
        { var _json0 = _json.GetProperty("items"); Items = new System.Collections.Generic.List<test.TestRow>(_json0.GetArrayLength()); foreach(JsonElement __e in _json0.EnumerateArray()) { test.TestRow __v;  __v =  test.TestRow.DeserializeTestRow(__e);  Items.Add(__v); }   }
    }

    public ExcelFromJsonMultiRow(int id, int x, System.Collections.Generic.List<test.TestRow> items ) 
    {
        this.Id = id;
        this.X = x;
        this.Items = items;
    }

    public static ExcelFromJsonMultiRow DeserializeExcelFromJsonMultiRow(JsonElement _json)
    {
        return new test.ExcelFromJsonMultiRow(_json);
    }

    public int Id { get; private set; }
    public int X { get; private set; }
    public System.Collections.Generic.List<test.TestRow> Items { get; private set; }

    public const int __ID__ = 715335694;
    public override int GetTypeId() => __ID__;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        foreach(var _e in Items) { _e?.Resolve(_tables); }
    }

    public  void TranslateText(System.Func<string, string, string> translator)
    {
        foreach(var _e in Items) { _e?.TranslateText(translator); }
    }

    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "X:" + X + ","
        + "Items:" + Bright.Common.StringUtil.CollectionToString(Items) + ","
        + "}";
    }
    }
}
