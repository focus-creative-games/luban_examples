
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "bright/serialization"



type Blueprint_Interface struct {
    Blueprint_Clazz
}


func (Blueprint_Interface) GetTypeId() int {
    return 2114170750
}


func NewBlueprint_Interface(_buf *serialization.ByteBuf) (_v *Blueprint_Interface, err error) {
    _v = &Blueprint_Interface{}

    var _p *Blueprint_Clazz
     if _p, err = NewBlueprint_Clazz(_buf) ; err != nil { return }
    _v.Blueprint_Clazz = *_p

    return
}


