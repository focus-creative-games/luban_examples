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

public sealed class TestBeRef :  Bright.Config.BeanBase 
{
    public TestBeRef(JsonElement _json) 
    {
        Id = _json.GetProperty("id").GetInt32();
        Count = _json.GetProperty("count").GetInt32();
    }

    public TestBeRef(int id, int count ) 
    {
        this.Id = id;
        this.Count = count;
    }

    public static TestBeRef DeserializeTestBeRef(JsonElement _json)
    {
        return new test.TestBeRef(_json);
    }

    public int Id { get; private set; }
    public int Count { get; private set; }

    public const int __ID__ = 1934403938;
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
        + "Count:" + Count + ","
        + "}";
    }
    }
}
