
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg;


import "errors"

type AiBlackboardKeyData struct {
    Value string
}

const TypeId_AiBlackboardKeyData = 1517269500

func (*AiBlackboardKeyData) GetTypeId() int32 {
    return 1517269500
}

func NewAiBlackboardKeyData(_buf map[string]interface{}) (_v *AiBlackboardKeyData, err error) {
    _v = &AiBlackboardKeyData{}
    { var _ok_ bool; var __json_value__ interface{}; if __json_value__, _ok_ = _buf["value"]; !_ok_ || __json_value__ == nil { err = errors.New("value error"); return } else { var __x__ string;  {  if __x__, _ok_ = __json_value__.(string); !_ok_ { err = errors.New("__x__ error"); return } }; _v.Value = __x__ }}
    return
}

