
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "bright/serialization"



type Error_ErrorStyleMsgbox struct {
    Error_ErrorStyle
    BtnName string
    Operation int32
}


func (Error_ErrorStyleMsgbox) GetTypeId() int {
    return -1920482343
}


func NewError_ErrorStyleMsgbox(_buf *serialization.ByteBuf) (_v *Error_ErrorStyleMsgbox, err error) {
    _v = &Error_ErrorStyleMsgbox{}

    var _p *Error_ErrorStyle
     if _p, err = NewError_ErrorStyle(_buf) ; err != nil { return }
    _v.Error_ErrorStyle = *_p

    if _v.BtnName, err = _buf.ReadString(); err != nil  { return } 
    if _v.Operation, err = _buf.ReadInt(); err != nil  { return } 
    return
}


