
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
    { var _ok_ bool; if _v.Value, _ok_ = _buf["value"].(string); !_ok_ { err = errors.New("value error"); return } }
    return
}
