
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



type Condition_MinLevel struct {
    Condition_BoolRoleCondition
    Level int32
}

func (Condition_MinLevel) GetTypeId() int {
    return -1075273755
}

func NewCondition_MinLevel(_buf *serialization.ByteBuf) (_v *Condition_MinLevel, err error) {
    _v = &Condition_MinLevel{}
    var _p *Condition_BoolRoleCondition
     if _p, err = NewCondition_BoolRoleCondition_Body(_buf) ; err != nil { return }
    _v.Condition_BoolRoleCondition = *_p
    { if _v.Level, err = _buf.ReadInt(); err != nil { return } }
    return
}

