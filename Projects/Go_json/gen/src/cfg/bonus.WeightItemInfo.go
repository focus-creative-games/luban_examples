
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Bonus_WeightItemInfo struct {
    ItemId int32
    Num int32
    Weight int32
}

func (Bonus_WeightItemInfo) GetTypeId() int {
    return 1239999176
}

func NewBonus_WeightItemInfo(_buf map[string]interface{}) (_v *Bonus_WeightItemInfo, err error) {
    _v = &Bonus_WeightItemInfo{}
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["item_id"].(float64); !_ok_ { err = errors.New("item_id error"); return }; _v.ItemId = int32(_tempNum_) }
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["num"].(float64); !_ok_ { err = errors.New("num error"); return }; _v.Num = int32(_tempNum_) }
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["weight"].(float64); !_ok_ { err = errors.New("weight error"); return }; _v.Weight = int32(_tempNum_) }
    return
}

