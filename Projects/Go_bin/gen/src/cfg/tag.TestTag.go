
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



type Tag_TestTag struct {
    Id int32
    Value string
}

func (Tag_TestTag) GetTypeId() int {
    return 1742933812
}

func NewTag_TestTag(_buf *serialization.ByteBuf) (_v *Tag_TestTag, err error) {
    _v = &Tag_TestTag{}
    { if _v.Id, err = _buf.ReadInt(); err != nil { return } }
    { if _v.Value, err = _buf.ReadString(); err != nil { return } }
    return
}
