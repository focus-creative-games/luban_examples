
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



type Ai_ChooseSkill struct {
    Ai_Task
    TargetActorKey string
    ResultSkillIdKey string
}

func (Ai_ChooseSkill) GetTypeId() int {
    return -918812268
}

func NewAi_ChooseSkill(_buf *serialization.ByteBuf) (_v *Ai_ChooseSkill, err error) {
    _v = &Ai_ChooseSkill{}
    var _p *Ai_Task
     if _p, err = NewAi_Task_Body(_buf) ; err != nil { return }
    _v.Ai_Task = *_p
    { if _v.TargetActorKey, err = _buf.ReadString(); err != nil { return } }
    { if _v.ResultSkillIdKey, err = _buf.ReadString(); err != nil { return } }
    return
}

