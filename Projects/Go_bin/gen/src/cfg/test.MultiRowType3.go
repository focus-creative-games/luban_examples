
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



type Test_MultiRowType3 struct {
    Id int32
    Items []*Test_MultiRowType1
}

func (Test_MultiRowType3) GetTypeId() int {
    return 540474972
}

func NewTest_MultiRowType3(_buf *serialization.ByteBuf) (_v *Test_MultiRowType3, err error) {
    _v = &Test_MultiRowType3{}
    { if _v.Id, err = _buf.ReadInt(); err != nil { return } }
     {
                _v.Items = make([]*Test_MultiRowType1, 0)
                var _n_ int
                if _n_, err = _buf.ReadSize(); err != nil {return}
                for i := 0 ; i < _n_ ; i++ {
                    var _e_ *Test_MultiRowType1
                    { if _e_, err = NewTest_MultiRowType1(_buf); err != nil { return } }
                    _v.Items = append(_v.Items, _e_)
                }
            }

    return
}
