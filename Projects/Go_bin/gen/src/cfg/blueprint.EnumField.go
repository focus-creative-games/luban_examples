
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



type Blueprint_EnumField struct {
    Name string
    Value int32
}

func (Blueprint_EnumField) GetTypeId() int {
    return 1830049470
}

func NewBlueprint_EnumField(_buf *serialization.ByteBuf) (_v *Blueprint_EnumField, err error) {
    _v = &Blueprint_EnumField{}
    { if _v.Name, err = _buf.ReadString(); err != nil { return } }
    { if _v.Value, err = _buf.ReadInt(); err != nil { return } }
    return
}
