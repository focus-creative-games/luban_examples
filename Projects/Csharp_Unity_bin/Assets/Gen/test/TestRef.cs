
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

public sealed class TestRef :  Bright.Config.BeanBase 
{
    public TestRef(ByteBuf _buf) 
    {
        Id = _buf.ReadInt();
        X1 = _buf.ReadInt();
        X2 = _buf.ReadInt();
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);A1 = new int[n];for(var i = 0 ; i < n ; i++) { int _e;_e = _buf.ReadInt(); A1[i] = _e;}}
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);A2 = new int[n];for(var i = 0 ; i < n ; i++) { int _e;_e = _buf.ReadInt(); A2[i] = _e;}}
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);B1 = new System.Collections.Generic.List<int>(n);for(var i = 0 ; i < n ; i++) { int _e;  _e = _buf.ReadInt(); B1.Add(_e);}}
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);B2 = new System.Collections.Generic.List<int>(n);for(var i = 0 ; i < n ; i++) { int _e;  _e = _buf.ReadInt(); B2.Add(_e);}}
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);C1 = new System.Collections.Generic.HashSet<int>(/*n * 3 / 2*/);for(var i = 0 ; i < n ; i++) { int _e;  _e = _buf.ReadInt(); C1.Add(_e);}}
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);C2 = new System.Collections.Generic.HashSet<int>(/*n * 3 / 2*/);for(var i = 0 ; i < n ; i++) { int _e;  _e = _buf.ReadInt(); C2.Add(_e);}}
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);D1 = new System.Collections.Generic.Dictionary<int, int>(n * 3 / 2);for(var i = 0 ; i < n ; i++) { int _k;  _k = _buf.ReadInt(); int _v;  _v = _buf.ReadInt();     D1.Add(_k, _v);}}
    }

    public static TestRef DeserializeTestRef(ByteBuf _buf)
    {
        return new test.TestRef(_buf);
    }

    public int Id { get; private set; }
    public int X1 { get; private set; }
    public test.TestBeRef X1_Ref { get; private set; }
    public int X2 { get; private set; }
    public test.TestBeRef X2_Ref { get; private set; }
    public int[] A1 { get; private set; }
    public int[] A2 { get; private set; }
    public System.Collections.Generic.List<int> B1 { get; private set; }
    public System.Collections.Generic.List<int> B2 { get; private set; }
    public System.Collections.Generic.HashSet<int> C1 { get; private set; }
    public System.Collections.Generic.HashSet<int> C2 { get; private set; }
    public System.Collections.Generic.Dictionary<int, int> D1 { get; private set; }

    public const int ID = -543222491;
    public override int GetTypeId() => ID;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        this.X1_Ref = (_tables["test.TbTestBeRef"] as test.TbTestBeRef).GetOrDefault(X1);
        this.X2_Ref = (_tables["test.TbTestBeRef"] as test.TbTestBeRef).GetOrDefault(X2);
    }

    public  void TranslateText(System.Func<string, string, string> translator)
    {
    }

    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "X1:" + X1 + ","
        + "X2:" + X2 + ","
        + "A1:" + Bright.Common.StringUtil.CollectionToString(A1) + ","
        + "A2:" + Bright.Common.StringUtil.CollectionToString(A2) + ","
        + "B1:" + Bright.Common.StringUtil.CollectionToString(B1) + ","
        + "B2:" + Bright.Common.StringUtil.CollectionToString(B2) + ","
        + "C1:" + Bright.Common.StringUtil.CollectionToString(C1) + ","
        + "C2:" + Bright.Common.StringUtil.CollectionToString(C2) + ","
        + "D1:" + Bright.Common.StringUtil.CollectionToString(D1) + ","
        + "}";
    }
    }

}