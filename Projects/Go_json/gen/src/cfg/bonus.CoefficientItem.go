
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Bonus_CoefficientItem struct {
    Bonus_Bonus
    BonusId int32
    BonusList *Bonus_Items
}

func (Bonus_CoefficientItem) GetTypeId() int {
    return -229470727
}

func NewBonus_CoefficientItem(_buf map[string]interface{}) (_v *Bonus_CoefficientItem, err error) {
    _v = &Bonus_CoefficientItem{}
    var _p *Bonus_Bonus
     if _p, err = NewBonus_Bonus_Body(_buf) ; err != nil { return }
    _v.Bonus_Bonus = *_p
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["bonus_id"].(float64); !_ok_ { err = errors.New("bonus_id error"); return }; _v.BonusId = int32(_tempNum_) }
    { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _buf["bonus_list"].(map[string]interface{}); !_ok_ { err = errors.New("bonus_list error"); return }; if _v.BonusList, err = NewBonus_Items(_x_); err != nil { return } }
    return
}
