
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import (
    "bright/serialization"
)

import "errors"

type Limit_DailyLimitBase struct {
    Limit_LimitBase
}


func NewLimit_DailyLimitBase(_buf *serialization.ByteBuf) (_v interface{}, err error) {
    var id int32
    if id, err = _buf.ReadInt() ; err != nil {
        return
    }
    switch id {
        case 303235413: return NewLimit_DailyLimit(_buf)
        default: return nil, errors.New("unknown type id")
    }
    return
}

func NewLimit_DailyLimitBase_Body(_buf *serialization.ByteBuf) (_v *Limit_DailyLimitBase, err error) {
    _v = &Limit_DailyLimitBase{}
    var _p *Limit_LimitBase
     if _p, err = NewLimit_LimitBase_Body(_buf) ; err != nil { return }
    _v.Limit_LimitBase = *_p
    return
}

