
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



type Blueprint_AbstraceMethod struct {
    Blueprint_Method
}

func (Blueprint_AbstraceMethod) GetTypeId() int {
    return -392137809
}

func NewBlueprint_AbstraceMethod(_buf *serialization.ByteBuf) (_v *Blueprint_AbstraceMethod, err error) {
    _v = &Blueprint_AbstraceMethod{}
    var _p *Blueprint_Method
     if _p, err = NewBlueprint_Method_Body(_buf) ; err != nil { return }
    _v.Blueprint_Method = *_p
    return
}

