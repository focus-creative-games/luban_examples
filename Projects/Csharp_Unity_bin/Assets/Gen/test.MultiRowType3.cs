
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Luban;


namespace cfg.test
{
public sealed partial class MultiRowType3 : Luban.BeanBase
{
    public MultiRowType3(ByteBuf _buf) 
    {
        ID = _buf.ReadInt();
        {int n0 = System.Math.Min(_buf.ReadSize(), _buf.Size);ITEMS = new System.Collections.Generic.List<test.MultiRowType1>(n0);for(var i0 = 0 ; i0 < n0 ; i0++) { test.MultiRowType1 _e0;  _e0 = test.MultiRowType1.DeserializeMultiRowType1(_buf); ITEMS.Add(_e0);}}
    }

    public static MultiRowType3 DeserializeMultiRowType3(ByteBuf _buf)
    {
        return new test.MultiRowType3(_buf);
    }

    public readonly int ID;
    public readonly System.Collections.Generic.List<test.MultiRowType1> ITEMS;
   
    public const int __ID__ = 540474972;
    public override int GetTypeId() => __ID__;

    public  void ResolveRef(Tables tables)
    {
        foreach (var _e in ITEMS) { _e?.ResolveRef(tables); }
    }

    public override string ToString()
    {
        return "{ "
        + "id:" + ID + ","
        + "items:" + Luban.StringUtil.CollectionToString(ITEMS) + ","
        + "}";
    }
}

}

