
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Condition_ContainsItem struct {
    Condition_RoleCondition
    ItemId int32
    Num int32
    Reverse bool
}

func (Condition_ContainsItem) GetTypeId() int {
    return 1961145317
}

func NewCondition_ContainsItem(_buf map[string]interface{}) (_v *Condition_ContainsItem, err error) {
    _v = &Condition_ContainsItem{}
    var _p *Condition_RoleCondition
     if _p, err = NewCondition_RoleCondition_Body(_buf) ; err != nil { return }
    _v.Condition_RoleCondition = *_p
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["item_id"].(float64); !_ok_ { err = errors.New("item_id error"); return }; _v.ItemId = int32(_tempNum_) }
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["num"].(float64); !_ok_ { err = errors.New("num error"); return }; _v.Num = int32(_tempNum_) }
    { var _ok_ bool; if _v.Reverse, _ok_ = _buf["reverse"].(bool); !_ok_ { err = errors.New("reverse error"); return } }
    return
}
