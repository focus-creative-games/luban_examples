
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

import "errors"

type Test_DemoD3 struct {
    Test_DemoDynamic
    X3 int32
}


func NewTest_DemoD3(_buf *serialization.ByteBuf) (_v interface{}, err error) {
    var id int32
    if id, err = _buf.ReadInt() ; err != nil {
        return
    }
    switch id {
        case -2138341717: return NewTest_DemoE1(_buf)
        default: return nil, errors.New("unknown type id")
    }
    return
}

func NewTest_DemoD3_Body(_buf *serialization.ByteBuf) (_v *Test_DemoD3, err error) {
    _v = &Test_DemoD3{}
    var _p *Test_DemoDynamic
     if _p, err = NewTest_DemoDynamic_Body(_buf) ; err != nil { return }
    _v.Test_DemoDynamic = *_p
    { if _v.X3, err = _buf.ReadInt(); err != nil { return } }
    return
}

