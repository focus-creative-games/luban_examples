
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg;


import "errors"

type TestDemoD2 struct {
    X1 int32
    X2 int32
}

const TypeId_TestDemoD2 = -2138341747

func (*TestDemoD2) GetTypeId() int32 {
    return -2138341747
}

func NewTestDemoD2(_buf map[string]interface{}) (_v *TestDemoD2, err error) {
    _v = &TestDemoD2{}
    { var _ok_ bool; var __json_x1__ interface{}; if __json_x1__, _ok_ = _buf["x1"]; !_ok_ || __json_x1__ == nil { err = errors.New("x1 error"); return } else { var __x__ int32;  { var _ok_ bool; var _x_ float64; if _x_, _ok_ = __json_x1__.(float64); !_ok_ { err = errors.New("__x__ error"); return }; __x__ = int32(_x_) }; _v.X1 = __x__ }}
    { var _ok_ bool; var __json_x2__ interface{}; if __json_x2__, _ok_ = _buf["x2"]; !_ok_ || __json_x2__ == nil { err = errors.New("x2 error"); return } else { var __x__ int32;  { var _ok_ bool; var _x_ float64; if _x_, _ok_ = __json_x2__.(float64); !_ok_ { err = errors.New("__x__ error"); return }; __x__ = int32(_x_) }; _v.X2 = __x__ }}
    return
}

