
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg;


import "errors"

type CommonIntRange struct {
    Min int32
    Max int32
}

const TypeId_CommonIntRange = -751013039

func (*CommonIntRange) GetTypeId() int32 {
    return -751013039
}

func NewCommonIntRange(_buf map[string]interface{}) (_v *CommonIntRange, err error) {
    _v = &CommonIntRange{}
    { var _ok_ bool; var __json_min__ interface{}; if __json_min__, _ok_ = _buf["min"]; !_ok_ || __json_min__ == nil { err = errors.New("min error"); return } else { var __x__ int32;  { var _ok_ bool; var _x_ float64; if _x_, _ok_ = __json_min__.(float64); !_ok_ { err = errors.New("__x__ error"); return }; __x__ = int32(_x_) }; _v.Min = __x__ }}
    { var _ok_ bool; var __json_max__ interface{}; if __json_max__, _ok_ = _buf["max"]; !_ok_ || __json_max__ == nil { err = errors.New("max error"); return } else { var __x__ int32;  { var _ok_ bool; var _x_ float64; if _x_, _ok_ = __json_max__.(float64); !_ok_ { err = errors.New("__x__ error"); return }; __x__ = int32(_x_) }; _v.Max = __x__ }}
    return
}

