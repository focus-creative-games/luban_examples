
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Condition_BoolRoleCondition struct {
    Condition_RoleCondition
}


func NewCondition_BoolRoleCondition(_buf map[string]interface{}) (_v interface{}, err error) {
    var id string
    var _ok_ bool
    if id, _ok_ = _buf["__type__"].(string) ; !_ok_ {
        return nil, errors.New("type id missing")
    }
    switch id {
        case "GenderLimit": return NewCondition_GenderLimit(_buf);
        case "MinLevel": return NewCondition_MinLevel(_buf);
        case "MaxLevel": return NewCondition_MaxLevel(_buf);
        case "MinMaxLevel": return NewCondition_MinMaxLevel(_buf);
        case "ClothesPropertyScoreGreaterThan": return NewCondition_ClothesPropertyScoreGreaterThan(_buf);
        default: return nil, errors.New("unknown type id")
    }
    return
}

func NewCondition_BoolRoleCondition_Body(_buf map[string]interface{}) (_v *Condition_BoolRoleCondition, err error) {
    _v = &Condition_BoolRoleCondition{}
    var _p *Condition_RoleCondition
     if _p, err = NewCondition_RoleCondition_Body(_buf) ; err != nil { return }
    _v.Condition_RoleCondition = *_p
    return
}
