
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
public sealed partial class MultiRowRecord : Luban.BeanBase
{
    public MultiRowRecord(JSONNode _buf) 
    {
        { if(!_buf["id"].IsNumber) { throw new SerializationException(); }  Id = _buf["id"]; }
        { if(!_buf["name"].IsString) { throw new SerializationException(); }  Name = _buf["name"]; }
        { var __json0 = _buf["one_rows"]; if(!__json0.IsArray) { throw new SerializationException(); } OneRows = new System.Collections.Generic.List<test.MultiRowType1>(__json0.Count); foreach(JSONNode __e0 in __json0.Children) { test.MultiRowType1 __v0;  { if(!__e0.IsObject) { throw new SerializationException(); }  __v0 = test.MultiRowType1.DeserializeMultiRowType1(__e0);  }  OneRows.Add(__v0); }   }
        { var __json0 = _buf["multi_rows1"]; if(!__json0.IsArray) { throw new SerializationException(); } MultiRows1 = new System.Collections.Generic.List<test.MultiRowType1>(__json0.Count); foreach(JSONNode __e0 in __json0.Children) { test.MultiRowType1 __v0;  { if(!__e0.IsObject) { throw new SerializationException(); }  __v0 = test.MultiRowType1.DeserializeMultiRowType1(__e0);  }  MultiRows1.Add(__v0); }   }
        { var __json0 = _buf["multi_rows2"]; if(!__json0.IsArray) { throw new SerializationException(); } int _n0 = __json0.Count; MultiRows2 = new test.MultiRowType1[_n0]; int __index0=0; foreach(JSONNode __e0 in __json0.Children) { test.MultiRowType1 __v0;  { if(!__e0.IsObject) { throw new SerializationException(); }  __v0 = test.MultiRowType1.DeserializeMultiRowType1(__e0);  }  MultiRows2[__index0++] = __v0; }   }
        { var __json0 = _buf["multi_rows4"]; if(!__json0.IsArray) { throw new SerializationException(); } MultiRows4 = new System.Collections.Generic.Dictionary<int, test.MultiRowType2>(__json0.Count); foreach(JSONNode __e0 in __json0.Children) { int _k0;  { if(!__e0[0].IsNumber) { throw new SerializationException(); }  _k0 = __e0[0]; } test.MultiRowType2 _v0;  { if(!__e0[1].IsObject) { throw new SerializationException(); }  _v0 = test.MultiRowType2.DeserializeMultiRowType2(__e0[1]);  }  MultiRows4.Add(_k0, _v0); }   }
        { var __json0 = _buf["multi_rows5"]; if(!__json0.IsArray) { throw new SerializationException(); } MultiRows5 = new System.Collections.Generic.List<test.MultiRowType3>(__json0.Count); foreach(JSONNode __e0 in __json0.Children) { test.MultiRowType3 __v0;  { if(!__e0.IsObject) { throw new SerializationException(); }  __v0 = test.MultiRowType3.DeserializeMultiRowType3(__e0);  }  MultiRows5.Add(__v0); }   }
        { var __json0 = _buf["multi_rows6"]; if(!__json0.IsArray) { throw new SerializationException(); } MultiRows6 = new System.Collections.Generic.Dictionary<int, test.MultiRowType2>(__json0.Count); foreach(JSONNode __e0 in __json0.Children) { int _k0;  { if(!__e0[0].IsNumber) { throw new SerializationException(); }  _k0 = __e0[0]; } test.MultiRowType2 _v0;  { if(!__e0[1].IsObject) { throw new SerializationException(); }  _v0 = test.MultiRowType2.DeserializeMultiRowType2(__e0[1]);  }  MultiRows6.Add(_k0, _v0); }   }
        { var __json0 = _buf["multi_rows7"]; if(!__json0.IsArray) { throw new SerializationException(); } MultiRows7 = new System.Collections.Generic.Dictionary<int, int>(__json0.Count); foreach(JSONNode __e0 in __json0.Children) { int _k0;  { if(!__e0[0].IsNumber) { throw new SerializationException(); }  _k0 = __e0[0]; } int _v0;  { if(!__e0[1].IsNumber) { throw new SerializationException(); }  _v0 = __e0[1]; }  MultiRows7.Add(_k0, _v0); }   }
    }

    public static MultiRowRecord DeserializeMultiRowRecord(JSONNode _buf)
    {
        return new test.MultiRowRecord(_buf);
    }

    public readonly int Id;
    public readonly string Name;
    public readonly System.Collections.Generic.List<test.MultiRowType1> OneRows;
    public readonly System.Collections.Generic.List<test.MultiRowType1> MultiRows1;
    public readonly test.MultiRowType1[] MultiRows2;
    public readonly System.Collections.Generic.Dictionary<int, test.MultiRowType2> MultiRows4;
    public readonly System.Collections.Generic.List<test.MultiRowType3> MultiRows5;
    public readonly System.Collections.Generic.Dictionary<int, test.MultiRowType2> MultiRows6;
    public readonly System.Collections.Generic.Dictionary<int, int> MultiRows7;
   
    public const int __ID__ = -501249394;
    public override int GetTypeId() => __ID__;

    public  void ResolveRef(Tables tables)
    {
        
        
        foreach (var _e in OneRows) { _e?.ResolveRef(tables); }
        foreach (var _e in MultiRows1) { _e?.ResolveRef(tables); }
        foreach (var _e in MultiRows2) { _e?.ResolveRef(tables); }
        foreach (var _e in MultiRows4.Values) { _e?.ResolveRef(tables); }
        foreach (var _e in MultiRows5) { _e?.ResolveRef(tables); }
        foreach (var _e in MultiRows6.Values) { _e?.ResolveRef(tables); }
        
    }

    public override string ToString()
    {
        return "{ "
        + "id:" + Id + ","
        + "name:" + Name + ","
        + "oneRows:" + Luban.StringUtil.CollectionToString(OneRows) + ","
        + "multiRows1:" + Luban.StringUtil.CollectionToString(MultiRows1) + ","
        + "multiRows2:" + Luban.StringUtil.CollectionToString(MultiRows2) + ","
        + "multiRows4:" + Luban.StringUtil.CollectionToString(MultiRows4) + ","
        + "multiRows5:" + Luban.StringUtil.CollectionToString(MultiRows5) + ","
        + "multiRows6:" + Luban.StringUtil.CollectionToString(MultiRows6) + ","
        + "multiRows7:" + Luban.StringUtil.CollectionToString(MultiRows7) + ","
        + "}";
    }
}

}
