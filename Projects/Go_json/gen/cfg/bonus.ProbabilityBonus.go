
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg

import "errors"

type BonusProbabilityBonus struct {
    Bonuses []*BonusProbabilityBonusInfo
}

const TypeId_BonusProbabilityBonus = 359783161

func (*BonusProbabilityBonus) GetTypeId() int32 {
    return 359783161
}

func (_v *BonusProbabilityBonus)Deserialize(_buf map[string]interface{}) (err error) {
     {
                var _arr_ []interface{}
                var _ok_ bool
                if _arr_, _ok_ = _buf["bonuses"].([]interface{}); !_ok_ { err = errors.New("bonuses error"); return }

                _v.Bonuses = make([]*BonusProbabilityBonusInfo, 0, len(_arr_))
                
                for _, _e_ := range _arr_ {
                    var _list_v_ *BonusProbabilityBonusInfo
                    { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _e_.(map[string]interface{}); !_ok_ { err = errors.New("_list_v_ error"); return }; if _list_v_, err = DeserializeBonusProbabilityBonusInfo(_x_); err != nil { return } }
                    _v.Bonuses = append(_v.Bonuses, _list_v_)
                }
            }

    return
}

func DeserializeBonusProbabilityBonus(_buf map[string]interface{}) (*BonusProbabilityBonus, error) {
    v := &BonusProbabilityBonus{}
    if err := v.Deserialize(_buf); err == nil {
        return v, nil
    } else {
        return nil, err
    }
}