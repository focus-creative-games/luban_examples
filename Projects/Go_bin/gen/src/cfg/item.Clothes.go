
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import (
    "bright/serialization"
)



type Item_Clothes struct {
    Item_ItemExtra
    Attack int32
    Hp int64
    EnergyLimit int32
    EnergyResume int32
}

func (Item_Clothes) GetTypeId() int {
    return 1659907149
}

func NewItem_Clothes(_buf *serialization.ByteBuf) (_v *Item_Clothes, err error) {
    _v = &Item_Clothes{}
    var _p *Item_ItemExtra
     if _p, err = NewItem_ItemExtra_Body(_buf) ; err != nil { return }
    _v.Item_ItemExtra = *_p
    { if _v.Attack, err = _buf.ReadInt(); err != nil { return } }
    { if _v.Hp, err = _buf.ReadLong(); err != nil { return } }
    { if _v.EnergyLimit, err = _buf.ReadInt(); err != nil { return } }
    { if _v.EnergyResume, err = _buf.ReadInt(); err != nil { return } }
    return
}
