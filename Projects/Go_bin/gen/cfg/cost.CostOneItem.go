
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg

import (
    "luban_examples/go_bin/bright/serialization"
)

import "errors"

type CostCostOneItem struct {
    ItemId int32
}

const TypeId_CostCostOneItem = -1033587381

func (*CostCostOneItem) GetTypeId() int32 {
    return -1033587381
}

func (_v *CostCostOneItem)Serialize(_buf *serialization.ByteBuf) {
    // not support
}

func (_v *CostCostOneItem)Deserialize(_buf *serialization.ByteBuf) (err error) {
    { if _v.ItemId, err = _buf.ReadInt(); err != nil { err = errors.New("_v.ItemId error"); return } }
    return
}

func DeserializeCostCostOneItem(_buf *serialization.ByteBuf) (*CostCostOneItem, error) {
    v := &CostCostOneItem{}
    if err := v.Deserialize(_buf); err == nil {
        return v, nil
    } else {
        return nil, err
    }
}