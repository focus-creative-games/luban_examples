
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "bright/serialization"



type Blueprint_ExternalMethod struct {
    Blueprint_Method
}


func (Blueprint_ExternalMethod) GetTypeId() int {
    return 1739079015
}


func NewBlueprint_ExternalMethod(_buf *serialization.ByteBuf) (_v *Blueprint_ExternalMethod, err error) {
    _v = &Blueprint_ExternalMethod{}

    var _p *Blueprint_Method
     if _p, err = NewBlueprint_Method(_buf) ; err != nil { return }
    _v.Blueprint_Method = *_p

    return
}


