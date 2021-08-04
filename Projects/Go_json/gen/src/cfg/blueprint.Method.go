
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Blueprint_Method struct {
    Name string
    Desc string
    IsStatic bool
    ReturnType string
    Parameters []*Blueprint_ParamInfo
}


func NewBlueprint_Method(_buf map[string]interface{}) (_v interface{}, err error) {
    var id string
    var _ok_ bool
    if id, _ok_ = _buf["__type__"].(string) ; !_ok_ {
        return nil, errors.New("type id missing")
    }
    switch id {
        case "AbstraceMethod": return NewBlueprint_AbstraceMethod(_buf);
        case "ExternalMethod": return NewBlueprint_ExternalMethod(_buf);
        case "BlueprintMethod": return NewBlueprint_BlueprintMethod(_buf);
        default: return nil, errors.New("unknown type id")
    }
    return
}

func NewBlueprint_Method_Body(_buf map[string]interface{}) (_v *Blueprint_Method, err error) {
    _v = &Blueprint_Method{}
    { var _ok_ bool; if _v.Name, _ok_ = _buf["name"].(string); !_ok_ { err = errors.New("name error"); return } }
    { var _ok_ bool; if _v.Desc, _ok_ = _buf["desc"].(string); !_ok_ { err = errors.New("desc error"); return } }
    { var _ok_ bool; if _v.IsStatic, _ok_ = _buf["is_static"].(bool); !_ok_ { err = errors.New("is_static error"); return } }
    { var _ok_ bool; if _v.ReturnType, _ok_ = _buf["return_type"].(string); !_ok_ { err = errors.New("return_type error"); return } }
     {
                var _arr_ []interface{}
                var _ok_ bool
                if _arr_, _ok_ = _buf["parameters"].([]interface{}); !_ok_ { err = errors.New("parameters error"); return }

                _v.Parameters = make([]*Blueprint_ParamInfo, 0, len(_arr_))
                
                for _, _e_ := range _arr_ {
                    var _list_v_ *Blueprint_ParamInfo
                    { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _e_.(map[string]interface{}); !_ok_ { err = errors.New("_list_v_ error"); return }; if _list_v_, err = NewBlueprint_ParamInfo(_x_); err != nil { return } }
                    _v.Parameters = append(_v.Parameters, _list_v_)
                }
            }

    return
}
