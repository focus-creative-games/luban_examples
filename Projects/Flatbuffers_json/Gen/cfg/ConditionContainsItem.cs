// <auto-generated>
//  automatically generated by the FlatBuffers compiler, do not modify
// </auto-generated>

namespace cfg
{

using global::System;
using global::System.Collections.Generic;
using global::FlatBuffers;

public struct ConditionContainsItem : IFlatbufferObject
{
  private Table __p;
  public ByteBuffer ByteBuffer { get { return __p.bb; } }
  public static void ValidateVersion() { FlatBufferConstants.FLATBUFFERS_2_0_0(); }
  public static ConditionContainsItem GetRootAsConditionContainsItem(ByteBuffer _bb) { return GetRootAsConditionContainsItem(_bb, new ConditionContainsItem()); }
  public static ConditionContainsItem GetRootAsConditionContainsItem(ByteBuffer _bb, ConditionContainsItem obj) { return (obj.__assign(_bb.GetInt(_bb.Position) + _bb.Position, _bb)); }
  public void __init(int _i, ByteBuffer _bb) { __p = new Table(_i, _bb); }
  public ConditionContainsItem __assign(int _i, ByteBuffer _bb) { __init(_i, _bb); return this; }

  public int ItemId { get { int o = __p.__offset(4); return o != 0 ? __p.bb.GetInt(o + __p.bb_pos) : (int)0; } }
  public int Num { get { int o = __p.__offset(6); return o != 0 ? __p.bb.GetInt(o + __p.bb_pos) : (int)0; } }
  public bool Reverse { get { int o = __p.__offset(8); return o != 0 ? 0!=__p.bb.Get(o + __p.bb_pos) : (bool)false; } }

  public static Offset<cfg.ConditionContainsItem> CreateConditionContainsItem(FlatBufferBuilder builder,
      int item_id = 0,
      int num = 0,
      bool reverse = false) {
    builder.StartTable(3);
    ConditionContainsItem.AddNum(builder, num);
    ConditionContainsItem.AddItemId(builder, item_id);
    ConditionContainsItem.AddReverse(builder, reverse);
    return ConditionContainsItem.EndConditionContainsItem(builder);
  }

  public static void StartConditionContainsItem(FlatBufferBuilder builder) { builder.StartTable(3); }
  public static void AddItemId(FlatBufferBuilder builder, int itemId) { builder.AddInt(0, itemId, 0); }
  public static void AddNum(FlatBufferBuilder builder, int num) { builder.AddInt(1, num, 0); }
  public static void AddReverse(FlatBufferBuilder builder, bool reverse) { builder.AddBool(2, reverse, false); }
  public static Offset<cfg.ConditionContainsItem> EndConditionContainsItem(FlatBufferBuilder builder) {
    int o = builder.EndTable();
    return new Offset<cfg.ConditionContainsItem>(o);
  }
};


}