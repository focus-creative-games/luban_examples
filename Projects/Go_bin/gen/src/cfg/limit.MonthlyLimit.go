
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "bright/serialization"



type Limit_MonthlyLimit struct {
    Limit_LimitBase
    Num int32
}


func (Limit_MonthlyLimit) GetTypeId() int {
    return 2063279905
}


func NewLimit_MonthlyLimit(_buf *serialization.ByteBuf) (_v *Limit_MonthlyLimit, err error) {
    _v = &Limit_MonthlyLimit{}

    var _p *Limit_LimitBase
     if _p, err = NewLimit_LimitBase(_buf) ; err != nil { return }
    _v.Limit_LimitBase = *_p

    if _v.Num, err = _buf.ReadInt(); err != nil  { return } 
    return
}


