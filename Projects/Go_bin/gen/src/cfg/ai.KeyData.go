
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "bright/serialization"



type Ai_KeyData struct {
    
}



func NewAi_KeyData(_buf *serialization.ByteBuf) (_v *Ai_KeyData, err error) {
    _v = &Ai_KeyData{}

    return
}

func NewChildAi_KeyData(_buf *serialization.ByteBuf) (_v interface{}, err error) {
    var id int32
    if id, err = _buf.ReadInt() ; err != nil {
        return
    }
    switch id {
            case 0 : return nil, nil
            case -719747885: return NewAi_FloatKeyData(_buf);
            case -342751904: return NewAi_IntKeyData(_buf);
            case -307888654: return NewAi_StringKeyData(_buf);
            case 1517269500: return NewAi_BlackboardKeyData(_buf);
    }
    return
}


