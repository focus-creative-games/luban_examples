
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



type Test_MultiRowType1 struct {
    Id int32
    X int32
}

func (Test_MultiRowType1) GetTypeId() int {
    return 540474970
}

func NewTest_MultiRowType1(_buf *serialization.ByteBuf) (_v *Test_MultiRowType1, err error) {
    _v = &Test_MultiRowType1{}
    { if _v.Id, err = _buf.ReadInt(); err != nil { return } }
    { if _v.X, err = _buf.ReadInt(); err != nil { return } }
    return
}
