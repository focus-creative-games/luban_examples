
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Bonus_WeightBonus struct {
    Bonus_Bonus
    Bonuses []*Bonus_WeightBonusInfo
}

func (Bonus_WeightBonus) GetTypeId() int {
    return -362807016
}

func NewBonus_WeightBonus(_buf map[string]interface{}) (_v *Bonus_WeightBonus, err error) {
    _v = &Bonus_WeightBonus{}
    var _p *Bonus_Bonus
     if _p, err = NewBonus_Bonus_Body(_buf) ; err != nil { return }
    _v.Bonus_Bonus = *_p
     {
                var _arr_ []interface{}
                var _ok_ bool
                if _arr_, _ok_ = _buf["bonuses"].([]interface{}); !_ok_ { err = errors.New("bonuses error"); return }

                _v.Bonuses = make([]*Bonus_WeightBonusInfo, 0, len(_arr_))
                
                for _, _e_ := range _arr_ {
                    var _list_v_ *Bonus_WeightBonusInfo
                    { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _e_.(map[string]interface{}); !_ok_ { err = errors.New("_list_v_ error"); return }; if _list_v_, err = NewBonus_WeightBonusInfo(_x_); err != nil { return } }
                    _v.Bonuses = append(_v.Bonuses, _list_v_)
                }
            }

    return
}

