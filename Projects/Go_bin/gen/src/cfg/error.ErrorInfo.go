
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "bright/serialization"



type Error_ErrorInfo struct {
    
    Code string
    Desc string
    Style interface{}
}


func (Error_ErrorInfo) GetTypeId() int {
    return 1389347408
}


func NewError_ErrorInfo(_buf *serialization.ByteBuf) (_v *Error_ErrorInfo, err error) {
    _v = &Error_ErrorInfo{}

    if _v.Code, err = _buf.ReadString(); err != nil  { return } 
    if _v.Desc, err = _buf.ReadString(); err != nil  { return } 
    if _v.Style, err = NewChildError_ErrorStyle(_buf); err != nil  { return } 
    return
}


