
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Blueprint_NormalClazz struct {
    Blueprint_Clazz
    IsAbstract bool
    Fields []*Blueprint_Field
}

func (Blueprint_NormalClazz) GetTypeId() int {
    return -2073576778
}

func NewBlueprint_NormalClazz(_buf map[string]interface{}) (_v *Blueprint_NormalClazz, err error) {
    _v = &Blueprint_NormalClazz{}
    var _p *Blueprint_Clazz
     if _p, err = NewBlueprint_Clazz_Body(_buf) ; err != nil { return }
    _v.Blueprint_Clazz = *_p
    { var _ok_ bool; if _v.IsAbstract, _ok_ = _buf["is_abstract"].(bool); !_ok_ { err = errors.New("is_abstract error"); return } }
     {
                var _arr_ []interface{}
                var _ok_ bool
                if _arr_, _ok_ = _buf["fields"].([]interface{}); !_ok_ { err = errors.New("fields error"); return }

                _v.Fields = make([]*Blueprint_Field, 0, len(_arr_))
                
                for _, _e_ := range _arr_ {
                    var _list_v_ *Blueprint_Field
                    { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _e_.(map[string]interface{}); !_ok_ { err = errors.New("_list_v_ error"); return }; if _list_v_, err = NewBlueprint_Field(_x_); err != nil { return } }
                    _v.Fields = append(_v.Fields, _list_v_)
                }
            }

    return
}
