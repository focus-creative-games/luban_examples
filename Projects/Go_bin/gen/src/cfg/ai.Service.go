
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "bright/serialization"



type Ai_Service struct {
    Ai_Node
}



func NewAi_Service(_buf *serialization.ByteBuf) (_v *Ai_Service, err error) {
    _v = &Ai_Service{}

    var _p *Ai_Node
     if _p, err = NewAi_Node(_buf) ; err != nil { return }
    _v.Ai_Node = *_p

    return
}

func NewChildAi_Service(_buf *serialization.ByteBuf) (_v interface{}, err error) {
    var id int32
    if id, err = _buf.ReadInt() ; err != nil {
        return
    }
    switch id {
            case 0 : return nil, nil
            case 1812449155: return NewAi_UeSetDefaultFocus(_buf);
            case 990693812: return NewAi_ExecuteTimeStatistic(_buf);
            case 1601247918: return NewAi_ChooseTarget(_buf);
            case 1195270745: return NewAi_KeepFaceTarget(_buf);
            case -999247644: return NewAi_GetOwnerPlayer(_buf);
            case -61887372: return NewAi_UpdateDailyBehaviorProps(_buf);
    }
    return
}


