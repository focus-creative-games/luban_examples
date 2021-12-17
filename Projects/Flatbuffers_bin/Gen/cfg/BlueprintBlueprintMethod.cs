// <auto-generated>
//  automatically generated by the FlatBuffers compiler, do not modify
// </auto-generated>

namespace cfg
{

using global::System;
using global::System.Collections.Generic;
using global::FlatBuffers;

public struct BlueprintBlueprintMethod : IFlatbufferObject
{
  private Table __p;
  public ByteBuffer ByteBuffer { get { return __p.bb; } }
  public static void ValidateVersion() { FlatBufferConstants.FLATBUFFERS_2_0_0(); }
  public static BlueprintBlueprintMethod GetRootAsBlueprintBlueprintMethod(ByteBuffer _bb) { return GetRootAsBlueprintBlueprintMethod(_bb, new BlueprintBlueprintMethod()); }
  public static BlueprintBlueprintMethod GetRootAsBlueprintBlueprintMethod(ByteBuffer _bb, BlueprintBlueprintMethod obj) { return (obj.__assign(_bb.GetInt(_bb.Position) + _bb.Position, _bb)); }
  public void __init(int _i, ByteBuffer _bb) { __p = new Table(_i, _bb); }
  public BlueprintBlueprintMethod __assign(int _i, ByteBuffer _bb) { __init(_i, _bb); return this; }

  public string Name { get { int o = __p.__offset(4); return o != 0 ? __p.__string(o + __p.bb_pos) : null; } }
#if ENABLE_SPAN_T
  public Span<byte> GetNameBytes() { return __p.__vector_as_span<byte>(4, 1); }
#else
  public ArraySegment<byte>? GetNameBytes() { return __p.__vector_as_arraysegment(4); }
#endif
  public byte[] GetNameArray() { return __p.__vector_as_array<byte>(4); }
  public string Desc { get { int o = __p.__offset(6); return o != 0 ? __p.__string(o + __p.bb_pos) : null; } }
#if ENABLE_SPAN_T
  public Span<byte> GetDescBytes() { return __p.__vector_as_span<byte>(6, 1); }
#else
  public ArraySegment<byte>? GetDescBytes() { return __p.__vector_as_arraysegment(6); }
#endif
  public byte[] GetDescArray() { return __p.__vector_as_array<byte>(6); }
  public bool IsStatic { get { int o = __p.__offset(8); return o != 0 ? 0!=__p.bb.Get(o + __p.bb_pos) : (bool)false; } }
  public string ReturnType { get { int o = __p.__offset(10); return o != 0 ? __p.__string(o + __p.bb_pos) : null; } }
#if ENABLE_SPAN_T
  public Span<byte> GetReturnTypeBytes() { return __p.__vector_as_span<byte>(10, 1); }
#else
  public ArraySegment<byte>? GetReturnTypeBytes() { return __p.__vector_as_arraysegment(10); }
#endif
  public byte[] GetReturnTypeArray() { return __p.__vector_as_array<byte>(10); }
  public cfg.BlueprintParamInfo? Parameters(int j) { int o = __p.__offset(12); return o != 0 ? (cfg.BlueprintParamInfo?)(new cfg.BlueprintParamInfo()).__assign(__p.__indirect(__p.__vector(o) + j * 4), __p.bb) : null; }
  public int ParametersLength { get { int o = __p.__offset(12); return o != 0 ? __p.__vector_len(o) : 0; } }

  public static Offset<cfg.BlueprintBlueprintMethod> CreateBlueprintBlueprintMethod(FlatBufferBuilder builder,
      StringOffset nameOffset = default(StringOffset),
      StringOffset descOffset = default(StringOffset),
      bool is_static = false,
      StringOffset return_typeOffset = default(StringOffset),
      VectorOffset parametersOffset = default(VectorOffset)) {
    builder.StartTable(5);
    BlueprintBlueprintMethod.AddParameters(builder, parametersOffset);
    BlueprintBlueprintMethod.AddReturnType(builder, return_typeOffset);
    BlueprintBlueprintMethod.AddDesc(builder, descOffset);
    BlueprintBlueprintMethod.AddName(builder, nameOffset);
    BlueprintBlueprintMethod.AddIsStatic(builder, is_static);
    return BlueprintBlueprintMethod.EndBlueprintBlueprintMethod(builder);
  }

  public static void StartBlueprintBlueprintMethod(FlatBufferBuilder builder) { builder.StartTable(5); }
  public static void AddName(FlatBufferBuilder builder, StringOffset nameOffset) { builder.AddOffset(0, nameOffset.Value, 0); }
  public static void AddDesc(FlatBufferBuilder builder, StringOffset descOffset) { builder.AddOffset(1, descOffset.Value, 0); }
  public static void AddIsStatic(FlatBufferBuilder builder, bool isStatic) { builder.AddBool(2, isStatic, false); }
  public static void AddReturnType(FlatBufferBuilder builder, StringOffset returnTypeOffset) { builder.AddOffset(3, returnTypeOffset.Value, 0); }
  public static void AddParameters(FlatBufferBuilder builder, VectorOffset parametersOffset) { builder.AddOffset(4, parametersOffset.Value, 0); }
  public static VectorOffset CreateParametersVector(FlatBufferBuilder builder, Offset<cfg.BlueprintParamInfo>[] data) { builder.StartVector(4, data.Length, 4); for (int i = data.Length - 1; i >= 0; i--) builder.AddOffset(data[i].Value); return builder.EndVector(); }
  public static VectorOffset CreateParametersVectorBlock(FlatBufferBuilder builder, Offset<cfg.BlueprintParamInfo>[] data) { builder.StartVector(4, data.Length, 4); builder.Add(data); return builder.EndVector(); }
  public static void StartParametersVector(FlatBufferBuilder builder, int numElems) { builder.StartVector(4, numElems, 4); }
  public static Offset<cfg.BlueprintBlueprintMethod> EndBlueprintBlueprintMethod(FlatBufferBuilder builder) {
    int o = builder.EndTable();
    builder.Required(o, 12);  // parameters
    return new Offset<cfg.BlueprintBlueprintMethod>(o);
  }
};


}