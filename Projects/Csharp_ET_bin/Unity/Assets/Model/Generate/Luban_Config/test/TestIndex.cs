
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Bright.Serialization;
using System.Collections.Generic;



namespace cfg.test
{

public sealed partial class TestIndex :  Bright.Config.BeanBase 
{
    public TestIndex(ByteBuf _buf) 
    {
        Id = _buf.ReadInt();
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);Eles = new System.Collections.Generic.List<test.DemoType1>(n);for(var i = 0 ; i < n ; i++) { test.DemoType1 _e;  _e = test.DemoType1.DeserializeDemoType1(_buf); Eles.Add(_e);}}
        foreach(var _v in Eles)
        { 
            Eles_Index.Add(_v.X1, _v);
        }
    }

    public TestIndex(int id, System.Collections.Generic.List<test.DemoType1> eles ) 
    {
        this.Id = id;
        this.Eles = eles;
        foreach(var _v in Eles)
        {
            Eles_Index.Add(_v.X1, _v); 
        }
    }

    public static TestIndex DeserializeTestIndex(ByteBuf _buf)
    {
        return new test.TestIndex(_buf);
    }

    public readonly int Id;
    public readonly System.Collections.Generic.List<test.DemoType1> Eles;
    public readonly Dictionary<int, test.DemoType1> Eles_Index = new Dictionary<int, test.DemoType1>();

    public const int ID = 1941154020;
    public override int GetTypeId() => ID;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        foreach(var _e in Eles) { _e?.Resolve(_tables); }
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "Eles:" + Bright.Common.StringUtil.CollectionToString(Eles) + ","
        + "}";
    }
    }

}

