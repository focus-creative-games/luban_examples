// <auto-generated>
//  automatically generated by the FlatBuffers compiler, do not modify
// </auto-generated>

namespace cfg
{

using global::System;
using global::System.Collections.Generic;
using global::FlatBuffers;

public struct TestMultiRowRecord : IFlatbufferObject
{
  private Table __p;
  public ByteBuffer ByteBuffer { get { return __p.bb; } }
  public static void ValidateVersion() { FlatBufferConstants.FLATBUFFERS_2_0_0(); }
  public static TestMultiRowRecord GetRootAsTestMultiRowRecord(ByteBuffer _bb) { return GetRootAsTestMultiRowRecord(_bb, new TestMultiRowRecord()); }
  public static TestMultiRowRecord GetRootAsTestMultiRowRecord(ByteBuffer _bb, TestMultiRowRecord obj) { return (obj.__assign(_bb.GetInt(_bb.Position) + _bb.Position, _bb)); }
  public void __init(int _i, ByteBuffer _bb) { __p = new Table(_i, _bb); }
  public TestMultiRowRecord __assign(int _i, ByteBuffer _bb) { __init(_i, _bb); return this; }

  public int Id { get { int o = __p.__offset(4); return o != 0 ? __p.bb.GetInt(o + __p.bb_pos) : (int)0; } }
  public string Name { get { int o = __p.__offset(6); return o != 0 ? __p.__string(o + __p.bb_pos) : null; } }
#if ENABLE_SPAN_T
  public Span<byte> GetNameBytes() { return __p.__vector_as_span<byte>(6, 1); }
#else
  public ArraySegment<byte>? GetNameBytes() { return __p.__vector_as_arraysegment(6); }
#endif
  public byte[] GetNameArray() { return __p.__vector_as_array<byte>(6); }
  public cfg.TestMultiRowType1? OneRows(int j) { int o = __p.__offset(8); return o != 0 ? (cfg.TestMultiRowType1?)(new cfg.TestMultiRowType1()).__assign(__p.__indirect(__p.__vector(o) + j * 4), __p.bb) : null; }
  public int OneRowsLength { get { int o = __p.__offset(8); return o != 0 ? __p.__vector_len(o) : 0; } }
  public cfg.TestMultiRowType1? MultiRows1(int j) { int o = __p.__offset(10); return o != 0 ? (cfg.TestMultiRowType1?)(new cfg.TestMultiRowType1()).__assign(__p.__indirect(__p.__vector(o) + j * 4), __p.bb) : null; }
  public int MultiRows1Length { get { int o = __p.__offset(10); return o != 0 ? __p.__vector_len(o) : 0; } }
  public cfg.TestMultiRowType1? MultiRows2(int j) { int o = __p.__offset(12); return o != 0 ? (cfg.TestMultiRowType1?)(new cfg.TestMultiRowType1()).__assign(__p.__indirect(__p.__vector(o) + j * 4), __p.bb) : null; }
  public int MultiRows2Length { get { int o = __p.__offset(12); return o != 0 ? __p.__vector_len(o) : 0; } }
  public cfg.KeyValue_int32_TestMultiRowType2? MultiRows4(int j) { int o = __p.__offset(14); return o != 0 ? (cfg.KeyValue_int32_TestMultiRowType2?)(new cfg.KeyValue_int32_TestMultiRowType2()).__assign(__p.__indirect(__p.__vector(o) + j * 4), __p.bb) : null; }
  public int MultiRows4Length { get { int o = __p.__offset(14); return o != 0 ? __p.__vector_len(o) : 0; } }
  public cfg.TestMultiRowType3? MultiRows5(int j) { int o = __p.__offset(16); return o != 0 ? (cfg.TestMultiRowType3?)(new cfg.TestMultiRowType3()).__assign(__p.__indirect(__p.__vector(o) + j * 4), __p.bb) : null; }
  public int MultiRows5Length { get { int o = __p.__offset(16); return o != 0 ? __p.__vector_len(o) : 0; } }
  public cfg.KeyValue_int32_TestMultiRowType2? MultiRows6(int j) { int o = __p.__offset(18); return o != 0 ? (cfg.KeyValue_int32_TestMultiRowType2?)(new cfg.KeyValue_int32_TestMultiRowType2()).__assign(__p.__indirect(__p.__vector(o) + j * 4), __p.bb) : null; }
  public int MultiRows6Length { get { int o = __p.__offset(18); return o != 0 ? __p.__vector_len(o) : 0; } }
  public cfg.KeyValue_int32_int32? MultiRows7(int j) { int o = __p.__offset(20); return o != 0 ? (cfg.KeyValue_int32_int32?)(new cfg.KeyValue_int32_int32()).__assign(__p.__indirect(__p.__vector(o) + j * 4), __p.bb) : null; }
  public int MultiRows7Length { get { int o = __p.__offset(20); return o != 0 ? __p.__vector_len(o) : 0; } }

  public static Offset<cfg.TestMultiRowRecord> CreateTestMultiRowRecord(FlatBufferBuilder builder,
      int id = 0,
      StringOffset nameOffset = default(StringOffset),
      VectorOffset one_rowsOffset = default(VectorOffset),
      VectorOffset multi_rows1Offset = default(VectorOffset),
      VectorOffset multi_rows2Offset = default(VectorOffset),
      VectorOffset multi_rows4Offset = default(VectorOffset),
      VectorOffset multi_rows5Offset = default(VectorOffset),
      VectorOffset multi_rows6Offset = default(VectorOffset),
      VectorOffset multi_rows7Offset = default(VectorOffset)) {
    builder.StartTable(9);
    TestMultiRowRecord.AddMultiRows7(builder, multi_rows7Offset);
    TestMultiRowRecord.AddMultiRows6(builder, multi_rows6Offset);
    TestMultiRowRecord.AddMultiRows5(builder, multi_rows5Offset);
    TestMultiRowRecord.AddMultiRows4(builder, multi_rows4Offset);
    TestMultiRowRecord.AddMultiRows2(builder, multi_rows2Offset);
    TestMultiRowRecord.AddMultiRows1(builder, multi_rows1Offset);
    TestMultiRowRecord.AddOneRows(builder, one_rowsOffset);
    TestMultiRowRecord.AddName(builder, nameOffset);
    TestMultiRowRecord.AddId(builder, id);
    return TestMultiRowRecord.EndTestMultiRowRecord(builder);
  }

  public static void StartTestMultiRowRecord(FlatBufferBuilder builder) { builder.StartTable(9); }
  public static void AddId(FlatBufferBuilder builder, int id) { builder.AddInt(0, id, 0); }
  public static void AddName(FlatBufferBuilder builder, StringOffset nameOffset) { builder.AddOffset(1, nameOffset.Value, 0); }
  public static void AddOneRows(FlatBufferBuilder builder, VectorOffset oneRowsOffset) { builder.AddOffset(2, oneRowsOffset.Value, 0); }
  public static VectorOffset CreateOneRowsVector(FlatBufferBuilder builder, Offset<cfg.TestMultiRowType1>[] data) { builder.StartVector(4, data.Length, 4); for (int i = data.Length - 1; i >= 0; i--) builder.AddOffset(data[i].Value); return builder.EndVector(); }
  public static VectorOffset CreateOneRowsVectorBlock(FlatBufferBuilder builder, Offset<cfg.TestMultiRowType1>[] data) { builder.StartVector(4, data.Length, 4); builder.Add(data); return builder.EndVector(); }
  public static void StartOneRowsVector(FlatBufferBuilder builder, int numElems) { builder.StartVector(4, numElems, 4); }
  public static void AddMultiRows1(FlatBufferBuilder builder, VectorOffset multiRows1Offset) { builder.AddOffset(3, multiRows1Offset.Value, 0); }
  public static VectorOffset CreateMultiRows1Vector(FlatBufferBuilder builder, Offset<cfg.TestMultiRowType1>[] data) { builder.StartVector(4, data.Length, 4); for (int i = data.Length - 1; i >= 0; i--) builder.AddOffset(data[i].Value); return builder.EndVector(); }
  public static VectorOffset CreateMultiRows1VectorBlock(FlatBufferBuilder builder, Offset<cfg.TestMultiRowType1>[] data) { builder.StartVector(4, data.Length, 4); builder.Add(data); return builder.EndVector(); }
  public static void StartMultiRows1Vector(FlatBufferBuilder builder, int numElems) { builder.StartVector(4, numElems, 4); }
  public static void AddMultiRows2(FlatBufferBuilder builder, VectorOffset multiRows2Offset) { builder.AddOffset(4, multiRows2Offset.Value, 0); }
  public static VectorOffset CreateMultiRows2Vector(FlatBufferBuilder builder, Offset<cfg.TestMultiRowType1>[] data) { builder.StartVector(4, data.Length, 4); for (int i = data.Length - 1; i >= 0; i--) builder.AddOffset(data[i].Value); return builder.EndVector(); }
  public static VectorOffset CreateMultiRows2VectorBlock(FlatBufferBuilder builder, Offset<cfg.TestMultiRowType1>[] data) { builder.StartVector(4, data.Length, 4); builder.Add(data); return builder.EndVector(); }
  public static void StartMultiRows2Vector(FlatBufferBuilder builder, int numElems) { builder.StartVector(4, numElems, 4); }
  public static void AddMultiRows4(FlatBufferBuilder builder, VectorOffset multiRows4Offset) { builder.AddOffset(5, multiRows4Offset.Value, 0); }
  public static VectorOffset CreateMultiRows4Vector(FlatBufferBuilder builder, Offset<cfg.KeyValue_int32_TestMultiRowType2>[] data) { builder.StartVector(4, data.Length, 4); for (int i = data.Length - 1; i >= 0; i--) builder.AddOffset(data[i].Value); return builder.EndVector(); }
  public static VectorOffset CreateMultiRows4VectorBlock(FlatBufferBuilder builder, Offset<cfg.KeyValue_int32_TestMultiRowType2>[] data) { builder.StartVector(4, data.Length, 4); builder.Add(data); return builder.EndVector(); }
  public static void StartMultiRows4Vector(FlatBufferBuilder builder, int numElems) { builder.StartVector(4, numElems, 4); }
  public static void AddMultiRows5(FlatBufferBuilder builder, VectorOffset multiRows5Offset) { builder.AddOffset(6, multiRows5Offset.Value, 0); }
  public static VectorOffset CreateMultiRows5Vector(FlatBufferBuilder builder, Offset<cfg.TestMultiRowType3>[] data) { builder.StartVector(4, data.Length, 4); for (int i = data.Length - 1; i >= 0; i--) builder.AddOffset(data[i].Value); return builder.EndVector(); }
  public static VectorOffset CreateMultiRows5VectorBlock(FlatBufferBuilder builder, Offset<cfg.TestMultiRowType3>[] data) { builder.StartVector(4, data.Length, 4); builder.Add(data); return builder.EndVector(); }
  public static void StartMultiRows5Vector(FlatBufferBuilder builder, int numElems) { builder.StartVector(4, numElems, 4); }
  public static void AddMultiRows6(FlatBufferBuilder builder, VectorOffset multiRows6Offset) { builder.AddOffset(7, multiRows6Offset.Value, 0); }
  public static VectorOffset CreateMultiRows6Vector(FlatBufferBuilder builder, Offset<cfg.KeyValue_int32_TestMultiRowType2>[] data) { builder.StartVector(4, data.Length, 4); for (int i = data.Length - 1; i >= 0; i--) builder.AddOffset(data[i].Value); return builder.EndVector(); }
  public static VectorOffset CreateMultiRows6VectorBlock(FlatBufferBuilder builder, Offset<cfg.KeyValue_int32_TestMultiRowType2>[] data) { builder.StartVector(4, data.Length, 4); builder.Add(data); return builder.EndVector(); }
  public static void StartMultiRows6Vector(FlatBufferBuilder builder, int numElems) { builder.StartVector(4, numElems, 4); }
  public static void AddMultiRows7(FlatBufferBuilder builder, VectorOffset multiRows7Offset) { builder.AddOffset(8, multiRows7Offset.Value, 0); }
  public static VectorOffset CreateMultiRows7Vector(FlatBufferBuilder builder, Offset<cfg.KeyValue_int32_int32>[] data) { builder.StartVector(4, data.Length, 4); for (int i = data.Length - 1; i >= 0; i--) builder.AddOffset(data[i].Value); return builder.EndVector(); }
  public static VectorOffset CreateMultiRows7VectorBlock(FlatBufferBuilder builder, Offset<cfg.KeyValue_int32_int32>[] data) { builder.StartVector(4, data.Length, 4); builder.Add(data); return builder.EndVector(); }
  public static void StartMultiRows7Vector(FlatBufferBuilder builder, int numElems) { builder.StartVector(4, numElems, 4); }
  public static Offset<cfg.TestMultiRowRecord> EndTestMultiRowRecord(FlatBufferBuilder builder) {
    int o = builder.EndTable();
    builder.Required(o, 8);  // one_rows
    builder.Required(o, 10);  // multi_rows1
    builder.Required(o, 12);  // multi_rows2
    builder.Required(o, 14);  // multi_rows4
    builder.Required(o, 16);  // multi_rows5
    builder.Required(o, 18);  // multi_rows6
    builder.Required(o, 20);  // multi_rows7
    return new Offset<cfg.TestMultiRowRecord>(o);
  }
};


}