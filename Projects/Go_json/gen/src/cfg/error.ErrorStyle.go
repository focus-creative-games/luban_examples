
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Error_ErrorStyle struct {
}


func NewError_ErrorStyle(_buf map[string]interface{}) (_v interface{}, err error) {
    var id string
    var _ok_ bool
    if id, _ok_ = _buf["__type__"].(string) ; !_ok_ {
        return nil, errors.New("type id missing")
    }
    switch id {
        case "ErrorStyleTip": return NewError_ErrorStyleTip(_buf);
        case "ErrorStyleMsgbox": return NewError_ErrorStyleMsgbox(_buf);
        case "ErrorStyleDlgOk": return NewError_ErrorStyleDlgOk(_buf);
        case "ErrorStyleDlgOkCancel": return NewError_ErrorStyleDlgOkCancel(_buf);
        default: return nil, errors.New("unknown type id")
    }
    return
}

func NewError_ErrorStyle_Body(_buf map[string]interface{}) (_v *Error_ErrorStyle, err error) {
    _v = &Error_ErrorStyle{}
    return
}
