
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

public sealed partial class TestJson2 :  Bright.Config.BeanBase 
{
    public TestJson2(ByteBuf _buf) 
    {
        Id = _buf.ReadInt();
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);M1 = new System.Collections.Generic.Dictionary<int, int>(n * 3 / 2);for(var i = 0 ; i < n ; i++) { int _k;  _k = _buf.ReadInt(); int _v;  _v = _buf.ReadInt();     M1.Add(_k, _v);}}
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);M2 = new System.Collections.Generic.Dictionary<long, int>(n * 3 / 2);for(var i = 0 ; i < n ; i++) { long _k;  _k = _buf.ReadLong(); int _v;  _v = _buf.ReadInt();     M2.Add(_k, _v);}}
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);M3 = new System.Collections.Generic.Dictionary<string, int>(n * 3 / 2);for(var i = 0 ; i < n ; i++) { string _k;  _k = _buf.ReadString(); int _v;  _v = _buf.ReadInt();     M3.Add(_k, _v);}}
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);M4 = new System.Collections.Generic.Dictionary<string, test.DemoType1>(n * 3 / 2);for(var i = 0 ; i < n ; i++) { string _k;  _k = _buf.ReadString(); test.DemoType1 _v;  _v = test.DemoType1.DeserializeDemoType1(_buf);     M4.Add(_k, _v);}}
    }

    public static TestJson2 DeserializeTestJson2(ByteBuf _buf)
    {
        return new test.TestJson2(_buf);
    }

    public int Id { get; private set; }
    public System.Collections.Generic.Dictionary<int, int> M1 { get; private set; }
    public System.Collections.Generic.Dictionary<long, int> M2 { get; private set; }
    public System.Collections.Generic.Dictionary<string, int> M3 { get; private set; }
    public System.Collections.Generic.Dictionary<string, test.DemoType1> M4 { get; private set; }

    public const int ID = 1942237276;
    public override int GetTypeId() => ID;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        foreach(var _e in M4.Values) { _e?.Resolve(_tables); }
    }

    public  void TranslateText(System.Func<string, string, string> translator)
    {
        foreach(var _e in M4.Values) { _e?.TranslateText(translator); }
    }

    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "M1:" + Bright.Common.StringUtil.CollectionToString(M1) + ","
        + "M2:" + Bright.Common.StringUtil.CollectionToString(M2) + ","
        + "M3:" + Bright.Common.StringUtil.CollectionToString(M3) + ","
        + "M4:" + Bright.Common.StringUtil.CollectionToString(M4) + ","
        + "}";
    }
    }

}
