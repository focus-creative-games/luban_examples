
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Blueprint_EnumClazz struct {
    Blueprint_Clazz
    Enums []*Blueprint_EnumField
}

func (Blueprint_EnumClazz) GetTypeId() int {
    return 1827364892
}

func NewBlueprint_EnumClazz(_buf map[string]interface{}) (_v *Blueprint_EnumClazz, err error) {
    _v = &Blueprint_EnumClazz{}
    var _p *Blueprint_Clazz
     if _p, err = NewBlueprint_Clazz_Body(_buf) ; err != nil { return }
    _v.Blueprint_Clazz = *_p
     {
                var _arr_ []interface{}
                var _ok_ bool
                if _arr_, _ok_ = _buf["enums"].([]interface{}); !_ok_ { err = errors.New("enums error"); return }

                _v.Enums = make([]*Blueprint_EnumField, 0, len(_arr_))
                
                for _, _e_ := range _arr_ {
                    var _list_v_ *Blueprint_EnumField
                    { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _e_.(map[string]interface{}); !_ok_ { err = errors.New("_list_v_ error"); return }; if _list_v_, err = NewBlueprint_EnumField(_x_); err != nil { return } }
                    _v.Enums = append(_v.Enums, _list_v_)
                }
            }

    return
}
