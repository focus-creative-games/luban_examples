
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Cost_CostItem struct {
    Cost_Cost
    ItemId int32
    Amount int32
}

func (Cost_CostItem) GetTypeId() int {
    return -1249440351
}

func NewCost_CostItem(_buf map[string]interface{}) (_v *Cost_CostItem, err error) {
    _v = &Cost_CostItem{}
    var _p *Cost_Cost
     if _p, err = NewCost_Cost_Body(_buf) ; err != nil { return }
    _v.Cost_Cost = *_p
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["item_id"].(float64); !_ok_ { err = errors.New("item_id error"); return }; _v.ItemId = int32(_tempNum_) }
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["amount"].(float64); !_ok_ { err = errors.New("amount error"); return }; _v.Amount = int32(_tempNum_) }
    return
}
