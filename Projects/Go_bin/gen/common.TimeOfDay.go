
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg;


import (
    "demo/luban"
)

import "errors"

type CommonTimeOfDay struct {
    Hour int32
    Minute int32
    Second int32
}

const TypeId_CommonTimeOfDay = -1728347371

func (*CommonTimeOfDay) GetTypeId() int32 {
    return -1728347371
}

func NewCommonTimeOfDay(_buf *luban.ByteBuf) (_v *CommonTimeOfDay, err error) {
    _v = &CommonTimeOfDay{}
    { if _v.Hour, err = _buf.ReadInt(); err != nil { err = errors.New("error"); return } }
    { if _v.Minute, err = _buf.ReadInt(); err != nil { err = errors.New("error"); return } }
    { if _v.Second, err = _buf.ReadInt(); err != nil { err = errors.New("error"); return } }
    return
}

