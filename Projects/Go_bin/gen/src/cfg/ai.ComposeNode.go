
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "bright/serialization"



type Ai_ComposeNode struct {
    Ai_FlowNode
}



func NewAi_ComposeNode(_buf *serialization.ByteBuf) (_v *Ai_ComposeNode, err error) {
    _v = &Ai_ComposeNode{}

    var _p *Ai_FlowNode
     if _p, err = NewAi_FlowNode(_buf) ; err != nil { return }
    _v.Ai_FlowNode = *_p

    return
}

func NewChildAi_ComposeNode(_buf *serialization.ByteBuf) (_v interface{}, err error) {
    var id int32
    if id, err = _buf.ReadInt() ; err != nil {
        return
    }
    switch id {
            case 0 : return nil, nil
            case -1789006105: return NewAi_Sequence(_buf);
            case -1946981627: return NewAi_Selector(_buf);
            case -1952582529: return NewAi_SimpleParallel(_buf);
    }
    return
}


