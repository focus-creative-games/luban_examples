
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Ai_IsAtLocation struct {
    Ai_Decorator
    AcceptableRadius float32
    KeyboardKey string
    InverseCondition bool
}

func (Ai_IsAtLocation) GetTypeId() int {
    return 1255972344
}

func NewAi_IsAtLocation(_buf map[string]interface{}) (_v *Ai_IsAtLocation, err error) {
    _v = &Ai_IsAtLocation{}
    var _p *Ai_Decorator
     if _p, err = NewAi_Decorator_Body(_buf) ; err != nil { return }
    _v.Ai_Decorator = *_p
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["acceptable_radius"].(float64); !_ok_ { err = errors.New("acceptable_radius error"); return }; _v.AcceptableRadius = float32(_tempNum_) }
    { var _ok_ bool; if _v.KeyboardKey, _ok_ = _buf["keyboard_key"].(string); !_ok_ { err = errors.New("keyboard_key error"); return } }
    { var _ok_ bool; if _v.InverseCondition, _ok_ = _buf["inverse_condition"].(bool); !_ok_ { err = errors.New("inverse_condition error"); return } }
    return
}
