
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

/// <summary>
/// 
/// </summary>
public sealed partial class DefineFromExcel2 :  Bright.Config.BeanBase 
{
    public DefineFromExcel2(ByteBuf _buf) 
    {
        Id = _buf.ReadInt();
        X1 = _buf.ReadBool();
        X5 = _buf.ReadLong();
        X6 = _buf.ReadFloat();
        X8 = _buf.ReadInt();
        X10 = _buf.ReadString();
        X13 = (test.ETestQuality)_buf.ReadInt();
        X14 = test.DemoDynamic.DeserializeDemoDynamic(_buf);
        V2 = _buf.ReadVector2();
        T1 = _buf.ReadInt();
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);K1 = new int[n];for(var i = 0 ; i < n ; i++) { int _e;_e = _buf.ReadInt(); K1[i] = _e;}}
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);K8 = new System.Collections.Generic.Dictionary<int, int>(n * 3 / 2);for(var i = 0 ; i < n ; i++) { int _k;  _k = _buf.ReadInt(); int _v;  _v = _buf.ReadInt();     K8.Add(_k, _v);}}
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);K9 = new System.Collections.Generic.List<test.DemoE2>(n);for(var i = 0 ; i < n ; i++) { test.DemoE2 _e;  _e = test.DemoE2.DeserializeDemoE2(_buf); K9.Add(_e);}}
    }

    public DefineFromExcel2(int id, bool x1, long x5, float x6, int x8, string x10, test.ETestQuality x13, test.DemoDynamic x14, System.Numerics.Vector2 v2, int t1, int[] k1, System.Collections.Generic.Dictionary<int, int> k8, System.Collections.Generic.List<test.DemoE2> k9 ) 
    {
        this.Id = id;
        this.X1 = x1;
        this.X5 = x5;
        this.X6 = x6;
        this.X8 = x8;
        this.X10 = x10;
        this.X13 = x13;
        this.X14 = x14;
        this.V2 = v2;
        this.T1 = t1;
        this.K1 = k1;
        this.K8 = k8;
        this.K9 = k9;
    }

    public static DefineFromExcel2 DeserializeDefineFromExcel2(ByteBuf _buf)
    {
        return new test.DefineFromExcel2(_buf);
    }

    /// <summary>
    /// id的描述
    /// </summary>
    public readonly int Id;
    /// <summary>
    /// 字段的描述
    /// </summary>
    public readonly bool X1;
    /// <summary>
    /// 
    /// </summary>
    public readonly long X5;
    /// <summary>
    /// 
    /// </summary>
    public readonly float X6;
    /// <summary>
    /// 
    /// </summary>
    public readonly int X8;
    public test.DemoPrimitiveTypesTable X8_Ref;
    /// <summary>
    /// 
    /// </summary>
    public readonly string X10;
    /// <summary>
    /// 
    /// </summary>
    public readonly test.ETestQuality X13;
    /// <summary>
    /// 
    /// </summary>
    public readonly test.DemoDynamic X14;
    /// <summary>
    /// 
    /// </summary>
    public readonly System.Numerics.Vector2 V2;
    /// <summary>
    /// 
    /// </summary>
    public readonly int T1;
    /// <summary>
    /// 
    /// </summary>
    public readonly int[] K1;
    /// <summary>
    /// 
    /// </summary>
    public readonly System.Collections.Generic.Dictionary<int, int> K8;
    /// <summary>
    /// 
    /// </summary>
    public readonly System.Collections.Generic.List<test.DemoE2> K9;

    public const int ID = 688816828;
    public override int GetTypeId() => ID;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        this.X8_Ref = (_tables["test.TbDemoPrimitive"] as test.TbDemoPrimitive).GetOrDefault(X8);
        X14?.Resolve(_tables);
        foreach(var _e in K9) { _e?.Resolve(_tables); }
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "X1:" + X1 + ","
        + "X5:" + X5 + ","
        + "X6:" + X6 + ","
        + "X8:" + X8 + ","
        + "X10:" + X10 + ","
        + "X13:" + X13 + ","
        + "X14:" + X14 + ","
        + "V2:" + V2 + ","
        + "T1:" + T1 + ","
        + "K1:" + Bright.Common.StringUtil.CollectionToString(K1) + ","
        + "K8:" + Bright.Common.StringUtil.CollectionToString(K8) + ","
        + "K9:" + Bright.Common.StringUtil.CollectionToString(K9) + ","
        + "}";
    }
    }

}

