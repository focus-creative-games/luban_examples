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

public sealed class SepVector :  Bright.Config.BeanBase 
{
    public SepVector(JsonElement _json) 
    {
        X = _json.GetProperty("x").GetInt32();
        Y = _json.GetProperty("y").GetInt32();
        Z = _json.GetProperty("z").GetInt32();
    }

    public SepVector(int x, int y, int z ) 
    {
        this.X = x;
        this.Y = y;
        this.Z = z;
    }

    public static SepVector DeserializeSepVector(JsonElement _json)
    {
        return new test.SepVector(_json);
    }

    public int X { get; private set; }
    public int Y { get; private set; }
    public int Z { get; private set; }

    public const int __ID__ = 252769477;
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
        + "X:" + X + ","
        + "Y:" + Y + ","
        + "Z:" + Z + ","
        + "}";
    }
    }
}
