
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



type Item_ItemFunction struct {
    MinorType int32
    FuncType int32
    Method string
    CloseBagUi bool
}

func (Item_ItemFunction) GetTypeId() int {
    return 1205824294
}

func NewItem_ItemFunction(_buf *serialization.ByteBuf) (_v *Item_ItemFunction, err error) {
    _v = &Item_ItemFunction{}
    { if _v.MinorType, err = _buf.ReadInt(); err != nil { return } }
    { if _v.FuncType, err = _buf.ReadInt(); err != nil { return } }
    { if _v.Method, err = _buf.ReadString(); err != nil { return } }
    { if _v.CloseBagUi, err = _buf.ReadBool(); err != nil { return } }
    return
}
