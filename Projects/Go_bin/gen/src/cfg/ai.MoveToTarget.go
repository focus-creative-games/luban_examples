
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



type Ai_MoveToTarget struct {
    Ai_Task
    TargetActorKey string
    AcceptableRadius float32
}

func (Ai_MoveToTarget) GetTypeId() int {
    return 514987779
}

func NewAi_MoveToTarget(_buf *serialization.ByteBuf) (_v *Ai_MoveToTarget, err error) {
    _v = &Ai_MoveToTarget{}
    var _p *Ai_Task
     if _p, err = NewAi_Task_Body(_buf) ; err != nil { return }
    _v.Ai_Task = *_p
    { if _v.TargetActorKey, err = _buf.ReadString(); err != nil { return } }
    { if _v.AcceptableRadius, err = _buf.ReadFloat(); err != nil { return } }
    return
}

