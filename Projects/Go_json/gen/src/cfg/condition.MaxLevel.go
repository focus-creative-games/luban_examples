
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Condition_MaxLevel struct {
    Condition_BoolRoleCondition
    Level int32
}

func (Condition_MaxLevel) GetTypeId() int {
    return 700922899
}

func NewCondition_MaxLevel(_buf map[string]interface{}) (_v *Condition_MaxLevel, err error) {
    _v = &Condition_MaxLevel{}
    var _p *Condition_BoolRoleCondition
     if _p, err = NewCondition_BoolRoleCondition_Body(_buf) ; err != nil { return }
    _v.Condition_BoolRoleCondition = *_p
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["level"].(float64); !_ok_ { err = errors.New("level error"); return }; _v.Level = int32(_tempNum_) }
    return
}

