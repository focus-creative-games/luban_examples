
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Blueprint_ParamInfo struct {
    Name string
    Type string
    IsRef bool
}

func (Blueprint_ParamInfo) GetTypeId() int {
    return -729799392
}

func NewBlueprint_ParamInfo(_buf map[string]interface{}) (_v *Blueprint_ParamInfo, err error) {
    _v = &Blueprint_ParamInfo{}
    { var _ok_ bool; if _v.Name, _ok_ = _buf["name"].(string); !_ok_ { err = errors.New("name error"); return } }
    { var _ok_ bool; if _v.Type, _ok_ = _buf["type"].(string); !_ok_ { err = errors.New("type error"); return } }
    { var _ok_ bool; if _v.IsRef, _ok_ = _buf["is_ref"].(bool); !_ok_ { err = errors.New("is_ref error"); return } }
    return
}

