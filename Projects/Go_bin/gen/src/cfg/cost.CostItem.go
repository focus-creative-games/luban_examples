
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



type Cost_CostItem struct {
    Cost_Cost
    ItemId int32
    Amount int32
}

func (Cost_CostItem) GetTypeId() int {
    return -1249440351
}

func NewCost_CostItem(_buf *serialization.ByteBuf) (_v *Cost_CostItem, err error) {
    _v = &Cost_CostItem{}
    var _p *Cost_Cost
     if _p, err = NewCost_Cost_Body(_buf) ; err != nil { return }
    _v.Cost_Cost = *_p
    { if _v.ItemId, err = _buf.ReadInt(); err != nil { return } }
    { if _v.Amount, err = _buf.ReadInt(); err != nil { return } }
    return
}
