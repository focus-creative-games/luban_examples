
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



type Limit_DailyLimit struct {
    Limit_DailyLimitBase
    Num int32
}

func (Limit_DailyLimit) GetTypeId() int {
    return 303235413
}

func NewLimit_DailyLimit(_buf *serialization.ByteBuf) (_v *Limit_DailyLimit, err error) {
    _v = &Limit_DailyLimit{}
    var _p *Limit_DailyLimitBase
     if _p, err = NewLimit_DailyLimitBase_Body(_buf) ; err != nil { return }
    _v.Limit_DailyLimitBase = *_p
    { if _v.Num, err = _buf.ReadInt(); err != nil { return } }
    return
}

