
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Test_DemoGroup struct {
    Id int32
    X1 int32
    X2 int32
    X3 int32
    X4 int32
    X5 *Test_InnerGroup
}

func (Test_DemoGroup) GetTypeId() int {
    return -379263008
}

func NewTest_DemoGroup(_buf map[string]interface{}) (_v *Test_DemoGroup, err error) {
    _v = &Test_DemoGroup{}
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["id"].(float64); !_ok_ { err = errors.New("id error"); return }; _v.Id = int32(_tempNum_) }
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["x1"].(float64); !_ok_ { err = errors.New("x1 error"); return }; _v.X1 = int32(_tempNum_) }
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["x2"].(float64); !_ok_ { err = errors.New("x2 error"); return }; _v.X2 = int32(_tempNum_) }
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["x3"].(float64); !_ok_ { err = errors.New("x3 error"); return }; _v.X3 = int32(_tempNum_) }
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["x4"].(float64); !_ok_ { err = errors.New("x4 error"); return }; _v.X4 = int32(_tempNum_) }
    { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _buf["x5"].(map[string]interface{}); !_ok_ { err = errors.New("x5 error"); return }; if _v.X5, err = NewTest_InnerGroup(_x_); err != nil { return } }
    return
}

