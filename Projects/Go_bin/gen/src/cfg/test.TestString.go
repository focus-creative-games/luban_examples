
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



type Test_TestString struct {
    Id int32
    S1 string
    Cs1 *Test_CompactString
    Cs2 *Test_CompactString
}

func (Test_TestString) GetTypeId() int {
    return 338485823
}

func NewTest_TestString(_buf *serialization.ByteBuf) (_v *Test_TestString, err error) {
    _v = &Test_TestString{}
    { if _v.Id, err = _buf.ReadInt(); err != nil { return } }
    { if _v.S1, err = _buf.ReadString(); err != nil { return } }
    { if _v.Cs1, err = NewTest_CompactString(_buf); err != nil { return } }
    { if _v.Cs2, err = NewTest_CompactString(_buf); err != nil { return } }
    return
}
