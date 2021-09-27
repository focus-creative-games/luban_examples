
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

public sealed class MultiRowRecord :  Bright.Config.BeanBase 
{
    public MultiRowRecord(JsonElement _json) 
    {
        Id = _json.GetProperty("id").GetInt32();
        Name = _json.GetProperty("name").GetString();
        { var _json0 = _json.GetProperty("one_rows"); OneRows = new System.Collections.Generic.List<test.MultiRowType1>(_json0.GetArrayLength()); foreach(JsonElement __e in _json0.EnumerateArray()) { test.MultiRowType1 __v;  __v =  test.MultiRowType1.DeserializeMultiRowType1(__e);  OneRows.Add(__v); }   }
        { var _json0 = _json.GetProperty("multi_rows1"); MultiRows1 = new System.Collections.Generic.List<test.MultiRowType1>(_json0.GetArrayLength()); foreach(JsonElement __e in _json0.EnumerateArray()) { test.MultiRowType1 __v;  __v =  test.MultiRowType1.DeserializeMultiRowType1(__e);  MultiRows1.Add(__v); }   }
        { var _json0 = _json.GetProperty("multi_rows2"); int _n = _json0.GetArrayLength(); MultiRows2 = new test.MultiRowType1[_n]; int _index=0; foreach(JsonElement __e in _json0.EnumerateArray()) { test.MultiRowType1 __v;  __v =  test.MultiRowType1.DeserializeMultiRowType1(__e);  MultiRows2[_index++] = __v; }   }
        { var _json0 = _json.GetProperty("multi_rows4"); MultiRows4 = new System.Collections.Generic.Dictionary<int, test.MultiRowType2>(_json0.GetArrayLength()); foreach(JsonElement __e in _json0.EnumerateArray()) { int __k;  __k = __e[0].GetInt32(); test.MultiRowType2 __v;  __v =  test.MultiRowType2.DeserializeMultiRowType2(__e[1]);  MultiRows4.Add(__k, __v); }   }
        { var _json0 = _json.GetProperty("multi_rows5"); MultiRows5 = new System.Collections.Generic.List<test.MultiRowType3>(_json0.GetArrayLength()); foreach(JsonElement __e in _json0.EnumerateArray()) { test.MultiRowType3 __v;  __v =  test.MultiRowType3.DeserializeMultiRowType3(__e);  MultiRows5.Add(__v); }   }
        { var _json0 = _json.GetProperty("multi_rows6"); MultiRows6 = new System.Collections.Generic.Dictionary<int, test.MultiRowType2>(_json0.GetArrayLength()); foreach(JsonElement __e in _json0.EnumerateArray()) { int __k;  __k = __e[0].GetInt32(); test.MultiRowType2 __v;  __v =  test.MultiRowType2.DeserializeMultiRowType2(__e[1]);  MultiRows6.Add(__k, __v); }   }
        { var _json0 = _json.GetProperty("multi_rows7"); MultiRows7 = new System.Collections.Generic.Dictionary<int, int>(_json0.GetArrayLength()); foreach(JsonElement __e in _json0.EnumerateArray()) { int __k;  __k = __e[0].GetInt32(); int __v;  __v = __e[1].GetInt32();  MultiRows7.Add(__k, __v); }   }
    }

    public MultiRowRecord(int id, string name, System.Collections.Generic.List<test.MultiRowType1> one_rows, System.Collections.Generic.List<test.MultiRowType1> multi_rows1, test.MultiRowType1[] multi_rows2, System.Collections.Generic.Dictionary<int, test.MultiRowType2> multi_rows4, System.Collections.Generic.List<test.MultiRowType3> multi_rows5, System.Collections.Generic.Dictionary<int, test.MultiRowType2> multi_rows6, System.Collections.Generic.Dictionary<int, int> multi_rows7 ) 
    {
        this.Id = id;
        this.Name = name;
        this.OneRows = one_rows;
        this.MultiRows1 = multi_rows1;
        this.MultiRows2 = multi_rows2;
        this.MultiRows4 = multi_rows4;
        this.MultiRows5 = multi_rows5;
        this.MultiRows6 = multi_rows6;
        this.MultiRows7 = multi_rows7;
    }

    public static MultiRowRecord DeserializeMultiRowRecord(JsonElement _json)
    {
        return new test.MultiRowRecord(_json);
    }

    public int Id { get; private set; }
    public string Name { get; private set; }
    public System.Collections.Generic.List<test.MultiRowType1> OneRows { get; private set; }
    public System.Collections.Generic.List<test.MultiRowType1> MultiRows1 { get; private set; }
    public test.MultiRowType1[] MultiRows2 { get; private set; }
    public System.Collections.Generic.Dictionary<int, test.MultiRowType2> MultiRows4 { get; private set; }
    public System.Collections.Generic.List<test.MultiRowType3> MultiRows5 { get; private set; }
    public System.Collections.Generic.Dictionary<int, test.MultiRowType2> MultiRows6 { get; private set; }
    public System.Collections.Generic.Dictionary<int, int> MultiRows7 { get; private set; }

    public const int ID = -501249394;
    public override int GetTypeId() => ID;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        foreach(var _e in OneRows) { _e?.Resolve(_tables); }
        foreach(var _e in MultiRows1) { _e?.Resolve(_tables); }
        foreach(var _e in MultiRows2) { _e?.Resolve(_tables); }
        foreach(var _e in MultiRows4.Values) { _e?.Resolve(_tables); }
        foreach(var _e in MultiRows5) { _e?.Resolve(_tables); }
        foreach(var _e in MultiRows6.Values) { _e?.Resolve(_tables); }
    }

    public  void TranslateText(System.Func<string, string, string> translator)
    {
        foreach(var _e in OneRows) { _e?.TranslateText(translator); }
        foreach(var _e in MultiRows1) { _e?.TranslateText(translator); }
        foreach(var _e in MultiRows2) { _e?.TranslateText(translator); }
        foreach(var _e in MultiRows4.Values) { _e?.TranslateText(translator); }
        foreach(var _e in MultiRows5) { _e?.TranslateText(translator); }
        foreach(var _e in MultiRows6.Values) { _e?.TranslateText(translator); }
    }

    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "Name:" + Name + ","
        + "OneRows:" + Bright.Common.StringUtil.CollectionToString(OneRows) + ","
        + "MultiRows1:" + Bright.Common.StringUtil.CollectionToString(MultiRows1) + ","
        + "MultiRows2:" + Bright.Common.StringUtil.CollectionToString(MultiRows2) + ","
        + "MultiRows4:" + Bright.Common.StringUtil.CollectionToString(MultiRows4) + ","
        + "MultiRows5:" + Bright.Common.StringUtil.CollectionToString(MultiRows5) + ","
        + "MultiRows6:" + Bright.Common.StringUtil.CollectionToString(MultiRows6) + ","
        + "MultiRows7:" + Bright.Common.StringUtil.CollectionToString(MultiRows7) + ","
        + "}";
    }
    }
}
