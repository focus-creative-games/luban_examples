
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

type CommonIntRange struct {
    Min int32
    Max int32
}

const TypeId_CommonIntRange = -751013039

func (*CommonIntRange) GetTypeId() int32 {
    return -751013039
}

func NewCommonIntRange(_buf *luban.ByteBuf) (_v *CommonIntRange, err error) {
    _v = &CommonIntRange{}
    { if _v.Min, err = _buf.ReadInt(); err != nil { err = errors.New("error"); return } }
    { if _v.Max, err = _buf.ReadInt(); err != nil { err = errors.New("error"); return } }
    return
}

