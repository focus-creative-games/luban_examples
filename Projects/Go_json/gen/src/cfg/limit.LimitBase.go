
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Limit_LimitBase struct {
}


func NewLimit_LimitBase(_buf map[string]interface{}) (_v interface{}, err error) {
    var id string
    var _ok_ bool
    if id, _ok_ = _buf["__type__"].(string) ; !_ok_ {
        return nil, errors.New("type id missing")
    }
    switch id {
        case "DailyLimit": return NewLimit_DailyLimit(_buf);
        case "MultiDayLimit": return NewLimit_MultiDayLimit(_buf);
        case "WeeklyLimit": return NewLimit_WeeklyLimit(_buf);
        case "MonthlyLimit": return NewLimit_MonthlyLimit(_buf);
        case "CoolDown": return NewLimit_CoolDown(_buf);
        case "GroupCoolDown": return NewLimit_GroupCoolDown(_buf);
        default: return nil, errors.New("unknown type id")
    }
    return
}

func NewLimit_LimitBase_Body(_buf map[string]interface{}) (_v *Limit_LimitBase, err error) {
    _v = &Limit_LimitBase{}
    return
}

