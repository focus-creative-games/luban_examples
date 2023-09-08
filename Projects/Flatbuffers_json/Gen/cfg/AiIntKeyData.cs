// <auto-generated>
//  automatically generated by the FlatBuffers compiler, do not modify
// </auto-generated>

namespace cfg
{

using global::System;
using global::System.Collections.Generic;
using global::Google.FlatBuffers;

public struct AiIntKeyData : IFlatbufferObject
{
  private Table __p;
  public ByteBuffer ByteBuffer { get { return __p.bb; } }
  public static void ValidateVersion() { FlatBufferConstants.FLATBUFFERS_23_5_26(); }
  public static AiIntKeyData GetRootAsAiIntKeyData(ByteBuffer _bb) { return GetRootAsAiIntKeyData(_bb, new AiIntKeyData()); }
  public static AiIntKeyData GetRootAsAiIntKeyData(ByteBuffer _bb, AiIntKeyData obj) { return (obj.__assign(_bb.GetInt(_bb.Position) + _bb.Position, _bb)); }
  public void __init(int _i, ByteBuffer _bb) { __p = new Table(_i, _bb); }
  public AiIntKeyData __assign(int _i, ByteBuffer _bb) { __init(_i, _bb); return this; }

  public int Value { get { int o = __p.__offset(4); return o != 0 ? __p.bb.GetInt(o + __p.bb_pos) : (int)0; } }

  public static Offset<cfg.AiIntKeyData> CreateAiIntKeyData(FlatBufferBuilder builder,
      int value = 0) {
    builder.StartTable(1);
    AiIntKeyData.AddValue(builder, value);
    return AiIntKeyData.EndAiIntKeyData(builder);
  }

  public static void StartAiIntKeyData(FlatBufferBuilder builder) { builder.StartTable(1); }
  public static void AddValue(FlatBufferBuilder builder, int value) { builder.AddInt(0, value, 0); }
  public static Offset<cfg.AiIntKeyData> EndAiIntKeyData(FlatBufferBuilder builder) {
    int o = builder.EndTable();
    return new Offset<cfg.AiIntKeyData>(o);
  }
}


static public class AiIntKeyDataVerify
{
  static public bool Verify(Google.FlatBuffers.Verifier verifier, uint tablePos)
  {
    return verifier.VerifyTableStart(tablePos)
      && verifier.VerifyField(tablePos, 4 /*Value*/, 4 /*int*/, 4, false)
      && verifier.VerifyTableEnd(tablePos);
  }
}

}
