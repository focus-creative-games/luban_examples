
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

public sealed partial class MultiRowRecord :  Bright.Config.BeanBase 
{
    public MultiRowRecord(JSONNode _json) 
    {
        { if(!_json["id"].IsNumber) { throw new SerializationException(); }  Id = _json["id"]; }
        { if(!_json["name"].IsString) { throw new SerializationException(); }  Name = _json["name"]; }
        { var _json1 = _json["one_rows"]; if(!_json1.IsArray) { throw new SerializationException(); } OneRows = new System.Collections.Generic.List<test.MultiRowType1>(_json1.Count); foreach(JSONNode __e in _json1.Children) { test.MultiRowType1 __v;  { if(!__e.IsObject) { throw new SerializationException(); }  __v = test.MultiRowType1.DeserializeMultiRowType1(__e); }  OneRows.Add(__v); }   }
        { var _json1 = _json["multi_rows1"]; if(!_json1.IsArray) { throw new SerializationException(); } MultiRows1 = new System.Collections.Generic.List<test.MultiRowType1>(_json1.Count); foreach(JSONNode __e in _json1.Children) { test.MultiRowType1 __v;  { if(!__e.IsObject) { throw new SerializationException(); }  __v = test.MultiRowType1.DeserializeMultiRowType1(__e); }  MultiRows1.Add(__v); }   }
        { var _json1 = _json["multi_rows2"]; if(!_json1.IsArray) { throw new SerializationException(); } int _n = _json1.Count; MultiRows2 = new test.MultiRowType1[_n]; int _index=0; foreach(JSONNode __e in _json1.Children) { test.MultiRowType1 __v;  { if(!__e.IsObject) { throw new SerializationException(); }  __v = test.MultiRowType1.DeserializeMultiRowType1(__e); }  MultiRows2[_index++] = __v; }   }
        { var _json1 = _json["multi_rows3"]; if(!_json1.IsArray) { throw new SerializationException(); } MultiRows3 = new System.Collections.Generic.HashSet<test.MultiRowType2>(/*_json1.Count*/); foreach(JSONNode __e in _json1.Children) { test.MultiRowType2 __v;  { if(!__e.IsObject) { throw new SerializationException(); }  __v = test.MultiRowType2.DeserializeMultiRowType2(__e); }  MultiRows3.Add(__v); }   }
        { var _json1 = _json["multi_rows4"]; if(!_json1.IsArray) { throw new SerializationException(); } MultiRows4 = new System.Collections.Generic.Dictionary<int, test.MultiRowType2>(_json1.Count); foreach(JSONNode __e in _json1.Children) { int __k;  { if(!__e[0].IsNumber) { throw new SerializationException(); }  __k = __e[0]; } test.MultiRowType2 __v;  { if(!__e[1].IsObject) { throw new SerializationException(); }  __v = test.MultiRowType2.DeserializeMultiRowType2(__e[1]); }  MultiRows4.Add(__k, __v); }   }
        { var _json1 = _json["multi_rows5"]; if(!_json1.IsArray) { throw new SerializationException(); } MultiRows5 = new System.Collections.Generic.List<test.MultiRowType3>(_json1.Count); foreach(JSONNode __e in _json1.Children) { test.MultiRowType3 __v;  { if(!__e.IsObject) { throw new SerializationException(); }  __v = test.MultiRowType3.DeserializeMultiRowType3(__e); }  MultiRows5.Add(__v); }   }
    }

    public MultiRowRecord(int id, string name, System.Collections.Generic.List<test.MultiRowType1> one_rows, System.Collections.Generic.List<test.MultiRowType1> multi_rows1, test.MultiRowType1[] multi_rows2, System.Collections.Generic.HashSet<test.MultiRowType2> multi_rows3, System.Collections.Generic.Dictionary<int, test.MultiRowType2> multi_rows4, System.Collections.Generic.List<test.MultiRowType3> multi_rows5 ) 
    {
        this.Id = id;
        this.Name = name;
        this.OneRows = one_rows;
        this.MultiRows1 = multi_rows1;
        this.MultiRows2 = multi_rows2;
        this.MultiRows3 = multi_rows3;
        this.MultiRows4 = multi_rows4;
        this.MultiRows5 = multi_rows5;
    }

    public static MultiRowRecord DeserializeMultiRowRecord(JSONNode _json)
    {
        return new test.MultiRowRecord(_json);
    }

    public readonly int Id;
    public readonly string Name;
    public readonly System.Collections.Generic.List<test.MultiRowType1> OneRows;
    public readonly System.Collections.Generic.List<test.MultiRowType1> MultiRows1;
    public readonly test.MultiRowType1[] MultiRows2;
    public readonly System.Collections.Generic.HashSet<test.MultiRowType2> MultiRows3;
    public readonly System.Collections.Generic.Dictionary<int, test.MultiRowType2> MultiRows4;
    public readonly System.Collections.Generic.List<test.MultiRowType3> MultiRows5;

    public const int ID = -501249394;
    public override int GetTypeId() => ID;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        foreach(var _e in OneRows) { _e?.Resolve(_tables); }
        foreach(var _e in MultiRows1) { _e?.Resolve(_tables); }
        foreach(var _e in MultiRows2) { _e?.Resolve(_tables); }
        foreach(var _e in MultiRows4.Values) { _e?.Resolve(_tables); }
        foreach(var _e in MultiRows5) { _e?.Resolve(_tables); }
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "Name:" + Name + ","
        + "OneRows:" + Bright.Common.StringUtil.CollectionToString(OneRows) + ","
        + "MultiRows1:" + Bright.Common.StringUtil.CollectionToString(MultiRows1) + ","
        + "MultiRows2:" + Bright.Common.StringUtil.CollectionToString(MultiRows2) + ","
        + "MultiRows3:" + Bright.Common.StringUtil.CollectionToString(MultiRows3) + ","
        + "MultiRows4:" + Bright.Common.StringUtil.CollectionToString(MultiRows4) + ","
        + "MultiRows5:" + Bright.Common.StringUtil.CollectionToString(MultiRows5) + ","
        + "}";
    }
    }
}
