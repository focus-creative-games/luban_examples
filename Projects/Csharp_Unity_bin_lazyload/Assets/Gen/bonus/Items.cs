//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;



namespace cfg.bonus
{

public sealed partial class Items :  bonus.Bonus 
{
    public Items(ByteBuf _buf)  : base(_buf) 
    {
        {int __n0 = System.Math.Min(_buf.ReadSize(), _buf.Size);ItemList = new bonus.Item[__n0];for(var __index0 = 0 ; __index0 < __n0 ; __index0++) { bonus.Item __e0;__e0 = bonus.Item.DeserializeItem(_buf); ItemList[__index0] = __e0;}}
        PostInit();
    }

    public static Items DeserializeItems(ByteBuf _buf)
    {
        return new bonus.Items(_buf);
    }

    public bonus.Item[] ItemList { get; private set; }

    public const int __ID__ = 819736849;
    public override int GetTypeId() => __ID__;
    public override string ToString()
    {
        return "{ "
        + "ItemList:" + Bright.Common.StringUtil.CollectionToString(ItemList) + ","
        + "}";
    }
    
    partial void PostInit();
}

}
