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
        X15 = test.Shape.DeserializeShape(_buf);
        V2 = _buf.ReadUnityVector2();
        T1 = _buf.ReadInt();
        {int __n0 = System.Math.Min(_buf.ReadSize(), _buf.Size);K1 = new int[__n0];for(var __index0 = 0 ; __index0 < __n0 ; __index0++) { int __e0;__e0 = _buf.ReadInt(); K1[__index0] = __e0;}}
        {int __n0 = System.Math.Min(_buf.ReadSize(), _buf.Size);K2 = new int[__n0];for(var __index0 = 0 ; __index0 < __n0 ; __index0++) { int __e0;__e0 = _buf.ReadInt(); K2[__index0] = __e0;}}
        {int n0 = System.Math.Min(_buf.ReadSize(), _buf.Size);K8 = new System.Collections.Generic.Dictionary<int, int>(n0 * 3 / 2);for(var i0 = 0 ; i0 < n0 ; i0++) { int _k0;  _k0 = _buf.ReadInt(); int _v0;  _v0 = _buf.ReadInt();     K8.Add(_k0, _v0);}}
        {int n0 = System.Math.Min(_buf.ReadSize(), _buf.Size);K9 = new System.Collections.Generic.List<test.DemoE2>(n0);for(var i0 = 0 ; i0 < n0 ; i0++) { test.DemoE2 _e0;  _e0 = test.DemoE2.DeserializeDemoE2(_buf); K9.Add(_e0);}}
        PostInit();
    }

    public static DefineFromExcel2 DeserializeDefineFromExcel2(ByteBuf _buf)
    {
        return new test.DefineFromExcel2(_buf);
    }

    /// <summary>
    /// 这是id
    /// </summary>
    public int Id { get; private set; }
    /// <summary>
    /// 字段x1
    /// </summary>
    public bool X1 { get; private set; }
    public long X5 { get; private set; }
    public float X6 { get; private set; }
    public int X8 { get; private set; }
    public string X10 { get; private set; }
    public test.ETestQuality X13 { get; private set; }
    public test.DemoDynamic X14 { get; private set; }
    public test.Shape X15 { get; private set; }
    public UnityEngine.Vector2 V2 { get; private set; }
    public int T1 { get; private set; }
    public long T1_Millis => T1 * 1000L;
    public int[] K1 { get; private set; }
    public int[] K2 { get; private set; }
    public System.Collections.Generic.Dictionary<int, int> K8 { get; private set; }
    public System.Collections.Generic.List<test.DemoE2> K9 { get; private set; }

    public const int __ID__ = 688816828;
    public override int GetTypeId() => __ID__;
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
        + "X15:" + X15 + ","
        + "V2:" + V2 + ","
        + "T1:" + T1 + ","
        + "K1:" + Bright.Common.StringUtil.CollectionToString(K1) + ","
        + "K2:" + Bright.Common.StringUtil.CollectionToString(K2) + ","
        + "K8:" + Bright.Common.StringUtil.CollectionToString(K8) + ","
        + "K9:" + Bright.Common.StringUtil.CollectionToString(K9) + ","
        + "}";
    }
    
    partial void PostInit();
}

}
