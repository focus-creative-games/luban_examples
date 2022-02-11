//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;
using SimpleJSON;



namespace cfg.test
{

public sealed partial class TestRef :  Bright.Config.BeanBase 
{
    public TestRef(JSONNode _json) 
    {
        { if(!_json["id"].IsNumber) { throw new SerializationException(); }  Id = _json["id"]; }
        { if(!_json["x1"].IsNumber) { throw new SerializationException(); }  X1 = _json["x1"]; }
        { if(!_json["x1_2"].IsNumber) { throw new SerializationException(); }  X12 = _json["x1_2"]; }
        { if(!_json["x2"].IsNumber) { throw new SerializationException(); }  X2 = _json["x2"]; }
        { if(!_json["x3"].IsNumber) { throw new SerializationException(); }  X3 = _json["x3"]; }
        { var _json1 = _json["a1"]; if(!_json1.IsArray) { throw new SerializationException(); } int _n = _json1.Count; A1 = new int[_n]; int _index=0; foreach(JSONNode __e in _json1.Children) { int __v;  { if(!__e.IsNumber) { throw new SerializationException(); }  __v = __e; }  A1[_index++] = __v; }   }
        { var _json1 = _json["a2"]; if(!_json1.IsArray) { throw new SerializationException(); } int _n = _json1.Count; A2 = new int[_n]; int _index=0; foreach(JSONNode __e in _json1.Children) { int __v;  { if(!__e.IsNumber) { throw new SerializationException(); }  __v = __e; }  A2[_index++] = __v; }   }
        { var _json1 = _json["b1"]; if(!_json1.IsArray) { throw new SerializationException(); } B1 = new System.Collections.Generic.List<int>(_json1.Count); foreach(JSONNode __e in _json1.Children) { int __v;  { if(!__e.IsNumber) { throw new SerializationException(); }  __v = __e; }  B1.Add(__v); }   }
        { var _json1 = _json["b2"]; if(!_json1.IsArray) { throw new SerializationException(); } B2 = new System.Collections.Generic.List<int>(_json1.Count); foreach(JSONNode __e in _json1.Children) { int __v;  { if(!__e.IsNumber) { throw new SerializationException(); }  __v = __e; }  B2.Add(__v); }   }
        { var _json1 = _json["c1"]; if(!_json1.IsArray) { throw new SerializationException(); } C1 = new System.Collections.Generic.HashSet<int>(/*_json1.Count*/); foreach(JSONNode __e in _json1.Children) { int __v;  { if(!__e.IsNumber) { throw new SerializationException(); }  __v = __e; }  C1.Add(__v); }   }
        { var _json1 = _json["c2"]; if(!_json1.IsArray) { throw new SerializationException(); } C2 = new System.Collections.Generic.HashSet<int>(/*_json1.Count*/); foreach(JSONNode __e in _json1.Children) { int __v;  { if(!__e.IsNumber) { throw new SerializationException(); }  __v = __e; }  C2.Add(__v); }   }
        { var _json1 = _json["d1"]; if(!_json1.IsArray) { throw new SerializationException(); } D1 = new System.Collections.Generic.Dictionary<int, int>(_json1.Count); foreach(JSONNode __e in _json1.Children) { int __k;  { if(!__e[0].IsNumber) { throw new SerializationException(); }  __k = __e[0]; } int __v;  { if(!__e[1].IsNumber) { throw new SerializationException(); }  __v = __e[1]; }  D1.Add(__k, __v); }   }
        { var _json1 = _json["d2"]; if(!_json1.IsArray) { throw new SerializationException(); } D2 = new System.Collections.Generic.Dictionary<int, int>(_json1.Count); foreach(JSONNode __e in _json1.Children) { int __k;  { if(!__e[0].IsNumber) { throw new SerializationException(); }  __k = __e[0]; } int __v;  { if(!__e[1].IsNumber) { throw new SerializationException(); }  __v = __e[1]; }  D2.Add(__k, __v); }   }
        { if(!_json["e1"].IsNumber) { throw new SerializationException(); }  E1 = _json["e1"]; }
        { if(!_json["e2"].IsNumber) { throw new SerializationException(); }  E2 = _json["e2"]; }
        { if(!_json["e3"].IsString) { throw new SerializationException(); }  E3 = _json["e3"]; }
        { if(!_json["f1"].IsNumber) { throw new SerializationException(); }  F1 = _json["f1"]; }
        { if(!_json["f2"].IsNumber) { throw new SerializationException(); }  F2 = _json["f2"]; }
        { if(!_json["f3"].IsString) { throw new SerializationException(); }  F3 = _json["f3"]; }
        PostInit();
    }

    public TestRef(int id, int x1, int x1_2, int x2, int x3, int[] a1, int[] a2, System.Collections.Generic.List<int> b1, System.Collections.Generic.List<int> b2, System.Collections.Generic.HashSet<int> c1, System.Collections.Generic.HashSet<int> c2, System.Collections.Generic.Dictionary<int, int> d1, System.Collections.Generic.Dictionary<int, int> d2, int e1, long e2, string e3, int f1, long f2, string f3 ) 
    {
        this.Id = id;
        this.X1 = x1;
        this.X12 = x1_2;
        this.X2 = x2;
        this.X3 = x3;
        this.A1 = a1;
        this.A2 = a2;
        this.B1 = b1;
        this.B2 = b2;
        this.C1 = c1;
        this.C2 = c2;
        this.D1 = d1;
        this.D2 = d2;
        this.E1 = e1;
        this.E2 = e2;
        this.E3 = e3;
        this.F1 = f1;
        this.F2 = f2;
        this.F3 = f3;
        PostInit();
    }

    public static TestRef DeserializeTestRef(JSONNode _json)
    {
        return new test.TestRef(_json);
    }

    public int Id { get; private set; }
    public int X1 { get; private set; }
    public test.TestBeRef X1_Ref { get; private set; }
    public int X12 { get; private set; }
    public int X2 { get; private set; }
    public int X3 { get; private set; }
    public int[] A1 { get; private set; }
    public test.TestBeRef[] A1_Ref { get; private set; }
    public int[] A2 { get; private set; }
    public test.TestBeRef[] A2_Ref { get; private set; }
    public System.Collections.Generic.List<int> B1 { get; private set; }
    public System.Collections.Generic.List<test.TestBeRef> B1_Ref { get; private set; }
    public System.Collections.Generic.List<int> B2 { get; private set; }
    public System.Collections.Generic.List<test.TestBeRef> B2_Ref { get; private set; }
    public System.Collections.Generic.HashSet<int> C1 { get; private set; }
    public System.Collections.Generic.HashSet<test.TestBeRef> C1_Ref { get; private set; }
    public System.Collections.Generic.HashSet<int> C2 { get; private set; }
    public System.Collections.Generic.HashSet<test.TestBeRef> C2_Ref { get; private set; }
    public System.Collections.Generic.Dictionary<int, int> D1 { get; private set; }
    public System.Collections.Generic.Dictionary<int, test.TestBeRef> D1_Ref { get; private set; }
    public System.Collections.Generic.Dictionary<int, int> D2 { get; private set; }
    public System.Collections.Generic.Dictionary<int, test.TestBeRef> D2_Ref { get; private set; }
    public int E1 { get; private set; }
    public long E2 { get; private set; }
    public string E3 { get; private set; }
    public int F1 { get; private set; }
    public long F2 { get; private set; }
    public string F3 { get; private set; }

    public const int __ID__ = -543222491;
    public override int GetTypeId() => __ID__;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        this.X1_Ref = (_tables["test.TbTestBeRef"] as test.TbTestBeRef).GetOrDefault(X1);
        { int __n = A1.Length; test.TbTestBeRef __table = (test.TbTestBeRef)_tables["test.TbTestBeRef"]; this.A1_Ref = new test.TestBeRef[__n]; for(int i = 0 ; i < __n ; i++) { this.A1_Ref[i] =  __table.GetOrDefault(A1[i]); } }
        { int __n = A2.Length; test.TbTestBeRef __table = (test.TbTestBeRef)_tables["test.TbTestBeRef"]; this.A2_Ref = new test.TestBeRef[__n]; for(int i = 0 ; i < __n ; i++) { this.A2_Ref[i] =  __table.GetOrDefault(A2[i]); } }
        { test.TbTestBeRef __table = (test.TbTestBeRef)_tables["test.TbTestBeRef"]; this.B1_Ref = new System.Collections.Generic.List<test.TestBeRef>(); foreach(var __e in B1) { this.B1_Ref.Add(__table.GetOrDefault(__e)); } }
        { test.TbTestBeRef __table = (test.TbTestBeRef)_tables["test.TbTestBeRef"]; this.B2_Ref = new System.Collections.Generic.List<test.TestBeRef>(); foreach(var __e in B2) { this.B2_Ref.Add(__table.GetOrDefault(__e)); } }
        { test.TbTestBeRef __table = (test.TbTestBeRef)_tables["test.TbTestBeRef"]; this.C1_Ref = new System.Collections.Generic.HashSet<test.TestBeRef>(); foreach(var __e in C1) { this.C1_Ref.Add(__table.GetOrDefault(__e)); } }
        { test.TbTestBeRef __table = (test.TbTestBeRef)_tables["test.TbTestBeRef"]; this.C2_Ref = new System.Collections.Generic.HashSet<test.TestBeRef>(); foreach(var __e in C2) { this.C2_Ref.Add(__table.GetOrDefault(__e)); } }
        { test.TbTestBeRef __table = (test.TbTestBeRef)_tables["test.TbTestBeRef"]; this.D1_Ref = new System.Collections.Generic.Dictionary<int, test.TestBeRef>(); foreach(var __e in D1) { this.D1_Ref.Add(__e.Key, __table.GetOrDefault(__e.Value)); } }
        { test.TbTestBeRef __table = (test.TbTestBeRef)_tables["test.TbTestBeRef"]; this.D2_Ref = new System.Collections.Generic.Dictionary<int, test.TestBeRef>(); foreach(var __e in D2) { this.D2_Ref.Add(__e.Key, __table.GetOrDefault(__e.Value)); } }
        PostResolve();
    }

    public  void TranslateText(System.Func<string, string, string> translator)
    {
    }

    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "X1:" + X1 + ","
        + "X12:" + X12 + ","
        + "X2:" + X2 + ","
        + "X3:" + X3 + ","
        + "A1:" + Bright.Common.StringUtil.CollectionToString(A1) + ","
        + "A2:" + Bright.Common.StringUtil.CollectionToString(A2) + ","
        + "B1:" + Bright.Common.StringUtil.CollectionToString(B1) + ","
        + "B2:" + Bright.Common.StringUtil.CollectionToString(B2) + ","
        + "C1:" + Bright.Common.StringUtil.CollectionToString(C1) + ","
        + "C2:" + Bright.Common.StringUtil.CollectionToString(C2) + ","
        + "D1:" + Bright.Common.StringUtil.CollectionToString(D1) + ","
        + "D2:" + Bright.Common.StringUtil.CollectionToString(D2) + ","
        + "E1:" + E1 + ","
        + "E2:" + E2 + ","
        + "E3:" + E3 + ","
        + "F1:" + F1 + ","
        + "F2:" + F2 + ","
        + "F3:" + F3 + ","
        + "}";
    }
    
    partial void PostInit();
    partial void PostResolve();
}
}
