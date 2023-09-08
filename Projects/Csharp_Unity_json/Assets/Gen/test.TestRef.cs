
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Luban;
using SimpleJSON;


namespace cfg.test
{
public sealed partial class TestRef : Luban.BeanBase
{
    public TestRef(JSONNode _buf) 
    {
        { if(!_buf["id"].IsNumber) { throw new SerializationException(); }  Id = _buf["id"]; }
        { if(!_buf["x1"].IsNumber) { throw new SerializationException(); }  X1 = _buf["x1"]; }
        X1_Ref = null;
        { if(!_buf["x1_2"].IsNumber) { throw new SerializationException(); }  X12 = _buf["x1_2"]; }
        X12_Ref = null;
        { if(!_buf["x2"].IsNumber) { throw new SerializationException(); }  X2 = _buf["x2"]; }
        { if(!_buf["x3"].IsNumber) { throw new SerializationException(); }  X3 = _buf["x3"]; }
        { if(!_buf["x4"].IsNumber) { throw new SerializationException(); }  X4 = _buf["x4"]; }
        X4_Ref = null;
        { var __json0 = _buf["a1"]; if(!__json0.IsArray) { throw new SerializationException(); } int _n0 = __json0.Count; A1 = new int[_n0]; int __index0=0; foreach(JSONNode __e0 in __json0.Children) { int __v0;  { if(!__e0.IsNumber) { throw new SerializationException(); }  __v0 = __e0; }  A1[__index0++] = __v0; }   }
        { var __json0 = _buf["a2"]; if(!__json0.IsArray) { throw new SerializationException(); } int _n0 = __json0.Count; A2 = new int[_n0]; int __index0=0; foreach(JSONNode __e0 in __json0.Children) { int __v0;  { if(!__e0.IsNumber) { throw new SerializationException(); }  __v0 = __e0; }  A2[__index0++] = __v0; }   }
        { var __json0 = _buf["b1"]; if(!__json0.IsArray) { throw new SerializationException(); } B1 = new System.Collections.Generic.List<int>(__json0.Count); foreach(JSONNode __e0 in __json0.Children) { int __v0;  { if(!__e0.IsNumber) { throw new SerializationException(); }  __v0 = __e0; }  B1.Add(__v0); }   }
        { var __json0 = _buf["b2"]; if(!__json0.IsArray) { throw new SerializationException(); } B2 = new System.Collections.Generic.List<int>(__json0.Count); foreach(JSONNode __e0 in __json0.Children) { int __v0;  { if(!__e0.IsNumber) { throw new SerializationException(); }  __v0 = __e0; }  B2.Add(__v0); }   }
        { var __json0 = _buf["c1"]; if(!__json0.IsArray) { throw new SerializationException(); } C1 = new System.Collections.Generic.HashSet<int>(/*__json0.Count*/); foreach(JSONNode __e0 in __json0.Children) { int __v0;  { if(!__e0.IsNumber) { throw new SerializationException(); }  __v0 = __e0; }  C1.Add(__v0); }   }
        { var __json0 = _buf["c2"]; if(!__json0.IsArray) { throw new SerializationException(); } C2 = new System.Collections.Generic.HashSet<int>(/*__json0.Count*/); foreach(JSONNode __e0 in __json0.Children) { int __v0;  { if(!__e0.IsNumber) { throw new SerializationException(); }  __v0 = __e0; }  C2.Add(__v0); }   }
        { var __json0 = _buf["d1"]; if(!__json0.IsArray) { throw new SerializationException(); } D1 = new System.Collections.Generic.Dictionary<int, int>(__json0.Count); foreach(JSONNode __e0 in __json0.Children) { int _k0;  { if(!__e0[0].IsNumber) { throw new SerializationException(); }  _k0 = __e0[0]; } int _v0;  { if(!__e0[1].IsNumber) { throw new SerializationException(); }  _v0 = __e0[1]; }  D1.Add(_k0, _v0); }   }
        { var __json0 = _buf["d2"]; if(!__json0.IsArray) { throw new SerializationException(); } D2 = new System.Collections.Generic.Dictionary<int, int>(__json0.Count); foreach(JSONNode __e0 in __json0.Children) { int _k0;  { if(!__e0[0].IsNumber) { throw new SerializationException(); }  _k0 = __e0[0]; } int _v0;  { if(!__e0[1].IsNumber) { throw new SerializationException(); }  _v0 = __e0[1]; }  D2.Add(_k0, _v0); }   }
        { if(!_buf["e1"].IsNumber) { throw new SerializationException(); }  E1 = _buf["e1"]; }
        { if(!_buf["e2"].IsNumber) { throw new SerializationException(); }  E2 = _buf["e2"]; }
        { if(!_buf["e3"].IsString) { throw new SerializationException(); }  E3 = _buf["e3"]; }
        { if(!_buf["f1"].IsNumber) { throw new SerializationException(); }  F1 = _buf["f1"]; }
        { if(!_buf["f2"].IsNumber) { throw new SerializationException(); }  F2 = _buf["f2"]; }
        { if(!_buf["f3"].IsString) { throw new SerializationException(); }  F3 = _buf["f3"]; }
        { if(!_buf["s1"].IsObject) { throw new SerializationException(); }  S1 = test.RefDynamicBase.DeserializeRefDynamicBase(_buf["s1"]);  }
    }

    public static TestRef DeserializeTestRef(JSONNode _buf)
    {
        return new test.TestRef(_buf);
    }

    public readonly int Id;
    public readonly int X1;
    public test.TestBeRef X1_Ref;
    public readonly int X12;
    public test.TestBeRef X12_Ref;
    public readonly int X2;
    public readonly int X3;
    public readonly int X4;
    public tag.TestTag X4_Ref;
    public readonly int[] A1;
    public readonly int[] A2;
    public readonly System.Collections.Generic.List<int> B1;
    public readonly System.Collections.Generic.List<int> B2;
    public readonly System.Collections.Generic.HashSet<int> C1;
    public readonly System.Collections.Generic.HashSet<int> C2;
    public readonly System.Collections.Generic.Dictionary<int, int> D1;
    public readonly System.Collections.Generic.Dictionary<int, int> D2;
    public readonly int E1;
    public readonly long E2;
    public readonly string E3;
    public readonly int F1;
    public readonly long F2;
    public readonly string F3;
    public readonly test.RefDynamicBase S1;
   
    public const int __ID__ = -543222491;
    public override int GetTypeId() => __ID__;

    public  void ResolveRef(Tables tables)
    {
        
        X1_Ref = tables.TbTestBeRef.GetOrDefault(X1);
        X12_Ref = tables.TbTestBeRef.GetOrDefault(X12);
        
        
        X4_Ref = tables.TbTestTag.GetOrDefault(X4);
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        S1?.ResolveRef(tables);
    }

    public override string ToString()
    {
        return "{ "
        + "id:" + Id + ","
        + "x1:" + X1 + ","
        + "x12:" + X12 + ","
        + "x2:" + X2 + ","
        + "x3:" + X3 + ","
        + "x4:" + X4 + ","
        + "a1:" + Luban.StringUtil.CollectionToString(A1) + ","
        + "a2:" + Luban.StringUtil.CollectionToString(A2) + ","
        + "b1:" + Luban.StringUtil.CollectionToString(B1) + ","
        + "b2:" + Luban.StringUtil.CollectionToString(B2) + ","
        + "c1:" + Luban.StringUtil.CollectionToString(C1) + ","
        + "c2:" + Luban.StringUtil.CollectionToString(C2) + ","
        + "d1:" + Luban.StringUtil.CollectionToString(D1) + ","
        + "d2:" + Luban.StringUtil.CollectionToString(D2) + ","
        + "e1:" + E1 + ","
        + "e2:" + E2 + ","
        + "e3:" + E3 + ","
        + "f1:" + F1 + ","
        + "f2:" + F2 + ","
        + "f3:" + F3 + ","
        + "s1:" + S1 + ","
        + "}";
    }
}

}
