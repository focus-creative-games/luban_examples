
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

public sealed partial class DemoE1 :  test.DemoD3 
{
    public DemoE1(JsonElement _json)  : base(_json) 
    {
        X4 = _json.GetProperty("x4").GetInt32();
    }

    public DemoE1(int x1, int x3, int x4 )  : base(x1,x3) 
    {
        this.X4 = x4;
    }

    public static DemoE1 DeserializeDemoE1(JsonElement _json)
    {
        return new test.DemoE1(_json);
    }

    public readonly int X4;

    public const int ID = -2138341717;
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
        + "X1:" + X1 + ","
        + "X3:" + X3 + ","
        + "X4:" + X4 + ","
        + "}";
    }
    }
}
