
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
   
public sealed partial class InnerGroup :  Bright.Config.BeanBase 
{
    public InnerGroup(JsonElement _buf) 
    {
        Y1 = _buf.GetProperty("y1").GetInt32();
        Y2 = _buf.GetProperty("y2").GetInt32();
        Y3 = _buf.GetProperty("y3").GetInt32();
        Y4 = _buf.GetProperty("y4").GetInt32();
    }

    public InnerGroup(int y1, int y2, int y3, int y4 ) 
    {
        this.Y1 = y1;
        this.Y2 = y2;
        this.Y3 = y3;
        this.Y4 = y4;
    }

    public static InnerGroup DeserializeInnerGroup(JsonElement _buf)
    {
        return new test.InnerGroup(_buf);
    }

    public readonly int Y1;
    public readonly int Y2;
    public readonly int Y3;
    public readonly int Y4;

    public const int ID = -587873083;
    public override int GetTypeId() => ID;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "Y1:" + Y1 + ","
        + "Y2:" + Y2 + ","
        + "Y3:" + Y3 + ","
        + "Y4:" + Y4 + ","
        + "}";
    }
    }
}

