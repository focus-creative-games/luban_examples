
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



type Ai_SimpleParallel struct {
    Ai_ComposeNode
    FinishMode int32
    MainTask interface{}
    BackgroundNode interface{}
}

func (Ai_SimpleParallel) GetTypeId() int {
    return -1952582529
}

func NewAi_SimpleParallel(_buf *serialization.ByteBuf) (_v *Ai_SimpleParallel, err error) {
    _v = &Ai_SimpleParallel{}
    var _p *Ai_ComposeNode
     if _p, err = NewAi_ComposeNode_Body(_buf) ; err != nil { return }
    _v.Ai_ComposeNode = *_p
    { if _v.FinishMode, err = _buf.ReadInt(); err != nil { return } }
    { if _v.MainTask, err = NewAi_Task(_buf); err != nil { return } }
    { if _v.BackgroundNode, err = NewAi_FlowNode(_buf); err != nil { return } }
    return
}
