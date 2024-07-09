
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Luban;
using Newtonsoft.Json.Linq;



namespace cfg.test
{

public sealed partial class TestRef : Luban.BeanBase
{
    public TestRef(JToken _buf) 
    {
        JObject _obj = _buf as JObject;
        Id = (int)_obj.GetValue("id");
        X1 = (int)_obj.GetValue("x1");
        X1_Ref = null;
        X12 = (int)_obj.GetValue("x1_2");
        X12_Ref = null;
        X2 = (int)_obj.GetValue("x2");
        X3 = (int)_obj.GetValue("x3");
        X4 = (int)_obj.GetValue("x4");
        X4_Ref = null;
        { var __json0 = _obj.GetValue("a1"); int _n0 = (__json0 as JArray).Count; A1 = new int[_n0]; int __index0=0; foreach(JToken __e0 in __json0) { int __v0;  __v0 = (int)__e0;  A1[__index0++] = __v0; }   }
        { var __json0 = _obj.GetValue("a2"); int _n0 = (__json0 as JArray).Count; A2 = new int[_n0]; int __index0=0; foreach(JToken __e0 in __json0) { int __v0;  __v0 = (int)__e0;  A2[__index0++] = __v0; }   }
        { var __json0 = _obj.GetValue("b1"); B1 = new System.Collections.Generic.List<int>((__json0 as JArray).Count); foreach(JToken __e0 in __json0) { int __v0;  __v0 = (int)__e0;  B1.Add(__v0); }   }
        { var __json0 = _obj.GetValue("b2"); B2 = new System.Collections.Generic.List<int>((__json0 as JArray).Count); foreach(JToken __e0 in __json0) { int __v0;  __v0 = (int)__e0;  B2.Add(__v0); }   }
        { var __json0 = _obj.GetValue("c1"); C1 = new System.Collections.Generic.HashSet<int>((__json0 as JArray).Count); foreach(JToken __e0 in __json0) { int __v0;  __v0 = (int)__e0;  C1.Add(__v0); }   }
        { var __json0 = _obj.GetValue("c2"); C2 = new System.Collections.Generic.HashSet<int>((__json0 as JArray).Count); foreach(JToken __e0 in __json0) { int __v0;  __v0 = (int)__e0;  C2.Add(__v0); }   }
        { var __json0 = _obj.GetValue("d1"); D1 = new System.Collections.Generic.Dictionary<int, int>((__json0 as JArray).Count); foreach(JToken __e0 in __json0) { int _k0;  _k0 = (int)__e0[0]; int _v0;  _v0 = (int)__e0[1];  D1.Add(_k0, _v0); }   }
        { var __json0 = _obj.GetValue("d2"); D2 = new System.Collections.Generic.Dictionary<int, int>((__json0 as JArray).Count); foreach(JToken __e0 in __json0) { int _k0;  _k0 = (int)__e0[0]; int _v0;  _v0 = (int)__e0[1];  D2.Add(_k0, _v0); }   }
        E1 = (int)_obj.GetValue("e1");
        E2 = (long)_obj.GetValue("e2");
        E3 = (string)_obj.GetValue("e3");
        F1 = (int)_obj.GetValue("f1");
        F2 = (long)_obj.GetValue("f2");
        F3 = (string)_obj.GetValue("f3");
        S1 = test.RefDynamicBase.DeserializeRefDynamicBase(_obj.GetValue("s1"));
    }

    public static TestRef DeserializeTestRef(JToken _buf)
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
    public test.TestBeRef[] A1_Ref;
    public readonly int[] A2;
    public test.TestBeRef[] A2_Ref;
    public readonly System.Collections.Generic.List<int> B1;
    public System.Collections.Generic.List<test.TestBeRef> B1_Ref;
    public readonly System.Collections.Generic.List<int> B2;
    public System.Collections.Generic.List<test.TestBeRef> B2_Ref;
    public readonly System.Collections.Generic.HashSet<int> C1;
    public System.Collections.Generic.HashSet<test.TestBeRef> C1_Ref;
    public readonly System.Collections.Generic.HashSet<int> C2;
    public System.Collections.Generic.HashSet<test.TestBeRef> C2_Ref;
    public readonly System.Collections.Generic.Dictionary<int, int> D1;
    public System.Collections.Generic.Dictionary<int, test.TestBeRef> D1_Ref;
    public readonly System.Collections.Generic.Dictionary<int, int> D2;
    public System.Collections.Generic.Dictionary<int, test.TestBeRef> D2_Ref;
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
        A1_Ref = new test.TestBeRef[A1.Length];
        for (int _i = 0; _i < A1.Length; _i++) { A1_Ref[_i] = tables.TbTestBeRef.GetOrDefault(A1[_i]); }

        A2_Ref = new test.TestBeRef[A2.Length];
        for (int _i = 0; _i < A2.Length; _i++) { A2_Ref[_i] = tables.TbTestBeRef.GetOrDefault(A2[_i]); }

        B1_Ref = new System.Collections.Generic.List<test.TestBeRef>();
        foreach (var _v in B1) { B1_Ref.Add(tables.TbTestBeRef.GetOrDefault(_v)); }

        B2_Ref = new System.Collections.Generic.List<test.TestBeRef>();
        foreach (var _v in B2) { B2_Ref.Add(tables.TbTestBeRef.GetOrDefault(_v)); }

        C1_Ref = new System.Collections.Generic.HashSet<test.TestBeRef>();
        foreach (var _v in C1) { C1_Ref.Add(tables.TbTestBeRef.GetOrDefault(_v)); }

        C2_Ref = new System.Collections.Generic.HashSet<test.TestBeRef>();
        foreach (var _v in C2) { C2_Ref.Add(tables.TbTestBeRef.GetOrDefault(_v)); }

        D1_Ref = new System.Collections.Generic.Dictionary<int, test.TestBeRef>();
        foreach (var kvp in D1) { D1_Ref.Add(kvp.Key, tables.TbTestBeRef.GetOrDefault(kvp.Value)); }

        D2_Ref = new System.Collections.Generic.Dictionary<int, test.TestBeRef>();
        foreach (var kvp in D2) { D2_Ref.Add(kvp.Key, tables.TbTestBeRef.GetOrDefault(kvp.Value)); }

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

