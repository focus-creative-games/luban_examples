
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



type L10n_L10NDemo struct {
    Id int32
    Text string
}

func (L10n_L10NDemo) GetTypeId() int {
    return -331195887
}

func NewL10n_L10NDemo(_buf *serialization.ByteBuf) (_v *L10n_L10NDemo, err error) {
    _v = &L10n_L10NDemo{}
    { if _v.Id, err = _buf.ReadInt(); err != nil { return } }
    { if _v.Text, err = _buf.ReadString(); err != nil { return } }
    return
}
