
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;



namespace cfg.role
{

public sealed partial class LevelExpAttr :  Bright.Config.BeanBase 
{
    public LevelExpAttr(ByteBuf _buf) 
    {
        Level = _buf.ReadInt();
        NeedExp = _buf.ReadLong();
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);ClothesAttrs = new System.Collections.Generic.List<int>(n);for(var i = 0 ; i < n ; i++) { int _e;  _e = _buf.ReadInt(); ClothesAttrs.Add(_e);}}
    }

    public static LevelExpAttr DeserializeLevelExpAttr(ByteBuf _buf)
    {
        return new role.LevelExpAttr(_buf);
    }

    public int Level { get; private set; }
    public long NeedExp { get; private set; }
    public System.Collections.Generic.List<int> ClothesAttrs { get; private set; }

    public const int ID = -1569837022;
    public override int GetTypeId() => ID;

    public  void Resolve(Dictionary<string, object> _tables)
    {
    }

    public  void TranslateText(System.Func<string, string, string> translator)
    {
    }

    public override string ToString()
    {
        return "{ "
        + "Level:" + Level + ","
        + "NeedExp:" + NeedExp + ","
        + "ClothesAttrs:" + Bright.Common.StringUtil.CollectionToString(ClothesAttrs) + ","
        + "}";
    }
    }

}
