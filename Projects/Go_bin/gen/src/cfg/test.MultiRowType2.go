
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



type Test_MultiRowType2 struct {
    Id int32
    X int32
    Y float32
}

func (Test_MultiRowType2) GetTypeId() int {
    return 540474971
}

func NewTest_MultiRowType2(_buf *serialization.ByteBuf) (_v *Test_MultiRowType2, err error) {
    _v = &Test_MultiRowType2{}
    { if _v.Id, err = _buf.ReadInt(); err != nil { return } }
    { if _v.X, err = _buf.ReadInt(); err != nil { return } }
    { if _v.Y, err = _buf.ReadFloat(); err != nil { return } }
    return
}
