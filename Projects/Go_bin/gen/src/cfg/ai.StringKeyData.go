
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "bright/serialization"



type Ai_StringKeyData struct {
    Ai_KeyData
    Value string
}


func (Ai_StringKeyData) GetTypeId() int {
    return -307888654
}


func NewAi_StringKeyData(_buf *serialization.ByteBuf) (_v *Ai_StringKeyData, err error) {
    _v = &Ai_StringKeyData{}

    var _p *Ai_KeyData
     if _p, err = NewAi_KeyData(_buf) ; err != nil { return }
    _v.Ai_KeyData = *_p

    if _v.Value, err = _buf.ReadString(); err != nil  { return } 
    return
}


