
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Luban;


namespace cfg.item
{
/// <summary>
/// 道具
/// </summary>
public sealed partial class Item : Luban.BeanBase
{
    public Item(ByteBuf _buf) 
    {
        ID = _buf.ReadInt();
        NAME = _buf.ReadString();
        MAJOR_TYPE = (item.EMajorType)_buf.ReadInt();
        MINOR_TYPE = (item.EMinorType)_buf.ReadInt();
        MAX_PILE_NUM = _buf.ReadInt();
        QUALITY = (item.EItemQuality)_buf.ReadInt();
        ICON = _buf.ReadString();
        ICON_BACKGROUD = _buf.ReadString();
        ICON_MASK = _buf.ReadString();
        DESC = _buf.ReadString();
        SHOW_ORDER = _buf.ReadInt();
    }

    public static Item DeserializeItem(ByteBuf _buf)
    {
        return new item.Item(_buf);
    }

    /// <summary>
    /// 道具id
    /// </summary>
    public readonly int ID;
    public readonly string NAME;
    public readonly item.EMajorType MAJOR_TYPE;
    public readonly item.EMinorType MINOR_TYPE;
    public readonly int MAX_PILE_NUM;
    public readonly item.EItemQuality QUALITY;
    public readonly string ICON;
    public readonly string ICON_BACKGROUD;
    public readonly string ICON_MASK;
    public readonly string DESC;
    public readonly int SHOW_ORDER;
   
    public const int __ID__ = 2107285806;
    public override int GetTypeId() => __ID__;

    public  void ResolveRef(Tables tables)
    {
    }

    public override string ToString()
    {
        return "{ "
        + "id:" + ID + ","
        + "name:" + NAME + ","
        + "major_type:" + MAJOR_TYPE + ","
        + "minor_type:" + MINOR_TYPE + ","
        + "max_pile_num:" + MAX_PILE_NUM + ","
        + "quality:" + QUALITY + ","
        + "icon:" + ICON + ","
        + "icon_backgroud:" + ICON_BACKGROUD + ","
        + "icon_mask:" + ICON_MASK + ","
        + "desc:" + DESC + ","
        + "show_order:" + SHOW_ORDER + ","
        + "}";
    }
}

}

