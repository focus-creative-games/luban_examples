
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Limit_MultiDayLimit struct {
    Limit_LimitBase
    Day int32
    Num int32
}

func (Limit_MultiDayLimit) GetTypeId() int {
    return -1753629499
}

func NewLimit_MultiDayLimit(_buf map[string]interface{}) (_v *Limit_MultiDayLimit, err error) {
    _v = &Limit_MultiDayLimit{}
    var _p *Limit_LimitBase
     if _p, err = NewLimit_LimitBase_Body(_buf) ; err != nil { return }
    _v.Limit_LimitBase = *_p
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["day"].(float64); !_ok_ { err = errors.New("day error"); return }; _v.Day = int32(_tempNum_) }
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["num"].(float64); !_ok_ { err = errors.New("num error"); return }; _v.Num = int32(_tempNum_) }
    return
}

