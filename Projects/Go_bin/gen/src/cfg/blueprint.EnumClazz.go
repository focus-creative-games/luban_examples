
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



type Blueprint_EnumClazz struct {
    Blueprint_Clazz
    Enums []*Blueprint_EnumField
}

func (Blueprint_EnumClazz) GetTypeId() int {
    return 1827364892
}

func NewBlueprint_EnumClazz(_buf *serialization.ByteBuf) (_v *Blueprint_EnumClazz, err error) {
    _v = &Blueprint_EnumClazz{}
    var _p *Blueprint_Clazz
     if _p, err = NewBlueprint_Clazz_Body(_buf) ; err != nil { return }
    _v.Blueprint_Clazz = *_p
     {
                _v.Enums = make([]*Blueprint_EnumField, 0)
                var _n_ int
                if _n_, err = _buf.ReadSize(); err != nil {return}
                for i := 0 ; i < _n_ ; i++ {
                    var _e_ *Blueprint_EnumField
                    { if _e_, err = NewBlueprint_EnumField(_buf); err != nil { return } }
                    _v.Enums = append(_v.Enums, _e_)
                }
            }

    return
}
