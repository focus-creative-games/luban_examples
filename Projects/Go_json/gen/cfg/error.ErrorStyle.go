
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg

import "errors"

type ErrorErrorStyle struct {
}

const TypeId_ErrorErrorStyle = 129528911

func (*ErrorErrorStyle) GetTypeId() int32 {
    return 129528911
}

func (_v *ErrorErrorStyle)Deserialize(_buf map[string]interface{}) (err error) {
    return
}

func DeserializeErrorErrorStyle(_buf map[string]interface{}) (interface{}, error) {
    var id string
    var _ok_ bool
    if id, _ok_ = _buf["__type__"].(string) ; !_ok_ {
        return nil, errors.New("type id missing")
    }
    switch id {
        case "ErrorStyleTip": _v := &ErrorErrorStyleTip{}; if err := _v.Deserialize(_buf); err != nil { return nil, errors.New("error.ErrorStyleTip") } else { return _v, nil }
        case "ErrorStyleMsgbox": _v := &ErrorErrorStyleMsgbox{}; if err := _v.Deserialize(_buf); err != nil { return nil, errors.New("error.ErrorStyleMsgbox") } else { return _v, nil }
        case "ErrorStyleDlgOk": _v := &ErrorErrorStyleDlgOk{}; if err := _v.Deserialize(_buf); err != nil { return nil, errors.New("error.ErrorStyleDlgOk") } else { return _v, nil }
        case "ErrorStyleDlgOkCancel": _v := &ErrorErrorStyleDlgOkCancel{}; if err := _v.Deserialize(_buf); err != nil { return nil, errors.New("error.ErrorStyleDlgOkCancel") } else { return _v, nil }
        default: return nil, errors.New("unknown type id")
    }
}