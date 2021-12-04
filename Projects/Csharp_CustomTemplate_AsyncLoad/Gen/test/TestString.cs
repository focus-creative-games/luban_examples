
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

public sealed class TestString :  Bright.Config.BeanBase 
{
    public TestString(JsonElement _json) 
    {
        Id = _json.GetProperty("id").GetInt32();
        S1 = _json.GetProperty("s1").GetString();
        Cs1 =  test.CompactString.DeserializeCompactString(_json.GetProperty("cs1"));
        Cs2 =  test.CompactString.DeserializeCompactString(_json.GetProperty("cs2"));
    }

    public TestString(int id, string s1, test.CompactString cs1, test.CompactString cs2 ) 
    {
        this.Id = id;
        this.S1 = s1;
        this.Cs1 = cs1;
        this.Cs2 = cs2;
    }

    public static TestString DeserializeTestString(JsonElement _json)
    {
        return new test.TestString(_json);
    }

    public int Id { get; private set; }
    public string S1 { get; private set; }
    public test.CompactString Cs1 { get; private set; }
    public test.CompactString Cs2 { get; private set; }

    public const int __ID__ = 338485823;
    public override int GetTypeId() => __ID__;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        Cs1?.Resolve(_tables);
        Cs2?.Resolve(_tables);
    }

    public  void TranslateText(System.Func<string, string, string> translator)
    {
        Cs1?.TranslateText(translator);
        Cs2?.TranslateText(translator);
    }

    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "S1:" + S1 + ","
        + "Cs1:" + Cs1 + ","
        + "Cs2:" + Cs2 + ","
        + "}";
    }
    }
}
