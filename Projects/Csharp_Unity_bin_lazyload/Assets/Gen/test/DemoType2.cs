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

public sealed partial class DemoType2 :  Bright.Config.BeanBase 
{
    public DemoType2(ByteBuf _buf) 
    {
        X4 = _buf.ReadInt();
        X1 = _buf.ReadBool();
        X2 = _buf.ReadByte();
        X3 = _buf.ReadShort();
        X5 = _buf.ReadLong();
        X6 = _buf.ReadFloat();
        X7 = _buf.ReadDouble();
        X80 = _buf.ReadFshort();
        X8 = _buf.ReadFint();
        X9 = _buf.ReadFlong();
        X10 = _buf.ReadString();
        X12 = test.DemoType1.DeserializeDemoType1(_buf);
        X13 = (test.DemoEnum)_buf.ReadInt();
        X14 = test.DemoDynamic.DeserializeDemoDynamic(_buf);
        S1_l10n_key = _buf.ReadString(); S1 = _buf.ReadString();
        V2 = _buf.ReadUnityVector2();
        V3 = _buf.ReadUnityVector3();
        V4 = _buf.ReadUnityVector4();
        T1 = _buf.ReadInt();
        {int __n0 = System.Math.Min(_buf.ReadSize(), _buf.Size);K1 = new int[__n0];for(var __index0 = 0 ; __index0 < __n0 ; __index0++) { int __e0;__e0 = _buf.ReadInt(); K1[__index0] = __e0;}}
        {int n0 = System.Math.Min(_buf.ReadSize(), _buf.Size);K2 = new System.Collections.Generic.List<int>(n0);for(var i0 = 0 ; i0 < n0 ; i0++) { int _e0;  _e0 = _buf.ReadInt(); K2.Add(_e0);}}
        {int n0 = System.Math.Min(_buf.ReadSize(), _buf.Size);K5 = new System.Collections.Generic.HashSet<int>(/*n0 * 3 / 2*/);for(var i0 = 0 ; i0 < n0 ; i0++) { int _e0;  _e0 = _buf.ReadInt(); K5.Add(_e0);}}
        {int n0 = System.Math.Min(_buf.ReadSize(), _buf.Size);K8 = new System.Collections.Generic.Dictionary<int, int>(n0 * 3 / 2);for(var i0 = 0 ; i0 < n0 ; i0++) { int _k0;  _k0 = _buf.ReadInt(); int _v0;  _v0 = _buf.ReadInt();     K8.Add(_k0, _v0);}}
        {int n0 = System.Math.Min(_buf.ReadSize(), _buf.Size);K9 = new System.Collections.Generic.List<test.DemoE2>(n0);for(var i0 = 0 ; i0 < n0 ; i0++) { test.DemoE2 _e0;  _e0 = test.DemoE2.DeserializeDemoE2(_buf); K9.Add(_e0);}}
        {int __n0 = System.Math.Min(_buf.ReadSize(), _buf.Size);K15 = new test.DemoDynamic[__n0];for(var __index0 = 0 ; __index0 < __n0 ; __index0++) { test.DemoDynamic __e0;__e0 = test.DemoDynamic.DeserializeDemoDynamic(_buf); K15[__index0] = __e0;}}
        PostInit();
    }

    public static DemoType2 DeserializeDemoType2(ByteBuf _buf)
    {
        return new test.DemoType2(_buf);
    }

    public int X4 { get; private set; }
    public bool X1 { get; private set; }
    public byte X2 { get; private set; }
    public short X3 { get; private set; }
    public long X5 { get; private set; }
    public float X6 { get; private set; }
    public double X7 { get; private set; }
    public short X80 { get; private set; }
    public int X8 { get; private set; }
    public long X9 { get; private set; }
    public string X10 { get; private set; }
    public test.DemoType1 X12 { get; private set; }
    public test.DemoEnum X13 { get; private set; }
    public test.DemoDynamic X14 { get; private set; }
    public string S1 { get; private set; }
    public string S1_l10n_key { get; }
    public UnityEngine.Vector2 V2 { get; private set; }
    public UnityEngine.Vector3 V3 { get; private set; }
    public UnityEngine.Vector4 V4 { get; private set; }
    public int T1 { get; private set; }
    public long T1_Millis => T1 * 1000L;
    public int[] K1 { get; private set; }
    public System.Collections.Generic.List<int> K2 { get; private set; }
    public System.Collections.Generic.HashSet<int> K5 { get; private set; }
    public System.Collections.Generic.Dictionary<int, int> K8 { get; private set; }
    public System.Collections.Generic.Dictionary<int, test.DemoType2> K8_Ref { get; private set; }
    public System.Collections.Generic.List<test.DemoE2> K9 { get; private set; }
    public test.DemoDynamic[] K15 { get; private set; }

    public const int __ID__ = -367048295;
    public override int GetTypeId() => __ID__;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        X12?.Resolve(_tables);
        X14?.Resolve(_tables);
        { test.TbFullTypes __table = (test.TbFullTypes)_tables["test.TbFullTypes"]; this.K8_Ref = new System.Collections.Generic.Dictionary<int, test.DemoType2>(); foreach(var __e in K8) { this.K8_Ref.Add(__e.Key, __table.GetOrDefault(__e.Value)); } }
        foreach(var _e in K9) { _e?.Resolve(_tables); }
        foreach(var _e in K15) { _e?.Resolve(_tables); }
        PostResolve();
    }

    public  void TranslateText(System.Func<string, string, string> translator)
    {
        X12?.TranslateText(translator);
        X14?.TranslateText(translator);
        S1 = translator(S1_l10n_key, S1);
        foreach(var _e in K9) { _e?.TranslateText(translator); }
        foreach(var _e in K15) { _e?.TranslateText(translator); }
    }

    public override string ToString()
    {
        return "{ "
        + "X4:" + X4 + ","
        + "X1:" + X1 + ","
        + "X2:" + X2 + ","
        + "X3:" + X3 + ","
        + "X5:" + X5 + ","
        + "X6:" + X6 + ","
        + "X7:" + X7 + ","
        + "X80:" + X80 + ","
        + "X8:" + X8 + ","
        + "X9:" + X9 + ","
        + "X10:" + X10 + ","
        + "X12:" + X12 + ","
        + "X13:" + X13 + ","
        + "X14:" + X14 + ","
        + "S1:" + S1 + ","
        + "V2:" + V2 + ","
        + "V3:" + V3 + ","
        + "V4:" + V4 + ","
        + "T1:" + T1 + ","
        + "K1:" + Bright.Common.StringUtil.CollectionToString(K1) + ","
        + "K2:" + Bright.Common.StringUtil.CollectionToString(K2) + ","
        + "K5:" + Bright.Common.StringUtil.CollectionToString(K5) + ","
        + "K8:" + Bright.Common.StringUtil.CollectionToString(K8) + ","
        + "K9:" + Bright.Common.StringUtil.CollectionToString(K9) + ","
        + "K15:" + Bright.Common.StringUtil.CollectionToString(K15) + ","
        + "}";
    }
    
    partial void PostInit();
    partial void PostResolve();
}

}
