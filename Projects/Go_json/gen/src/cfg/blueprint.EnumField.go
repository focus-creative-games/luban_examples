
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Blueprint_EnumField struct {
    Name string
    Value int32
}

func (Blueprint_EnumField) GetTypeId() int {
    return 1830049470
}

func NewBlueprint_EnumField(_buf map[string]interface{}) (_v *Blueprint_EnumField, err error) {
    _v = &Blueprint_EnumField{}
    { var _ok_ bool; if _v.Name, _ok_ = _buf["name"].(string); !_ok_ { err = errors.New("name error"); return } }
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["value"].(float64); !_ok_ { err = errors.New("value error"); return }; _v.Value = int32(_tempNum_) }
    return
}
