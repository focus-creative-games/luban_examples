
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg;


import "errors"

type CommonOneDayTimeRange struct {
    StartTime *CommonTimeOfDay
    EndTime *CommonTimeOfDay
}

const TypeId_CommonOneDayTimeRange = 1628814743

func (*CommonOneDayTimeRange) GetTypeId() int32 {
    return 1628814743
}

func NewCommonOneDayTimeRange(_buf map[string]interface{}) (_v *CommonOneDayTimeRange, err error) {
    _v = &CommonOneDayTimeRange{}
    { var _ok_ bool; var __json_start_time__ interface{}; if __json_start_time__, _ok_ = _buf["start_time"]; !_ok_ || __json_start_time__ == nil { err = errors.New("start_time error"); return } else { var __x__ *CommonTimeOfDay;  { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = __json_start_time__.(map[string]interface{}); !_ok_ { err = errors.New("__x__ error"); return }; if __x__, err = NewCommonTimeOfDay(_x_); err != nil { return } }; _v.StartTime = __x__ }}
    { var _ok_ bool; var __json_end_time__ interface{}; if __json_end_time__, _ok_ = _buf["end_time"]; !_ok_ || __json_end_time__ == nil { err = errors.New("end_time error"); return } else { var __x__ *CommonTimeOfDay;  { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = __json_end_time__.(map[string]interface{}); !_ok_ { err = errors.New("__x__ error"); return }; if __x__, err = NewCommonTimeOfDay(_x_); err != nil { return } }; _v.EndTime = __x__ }}
    return
}

