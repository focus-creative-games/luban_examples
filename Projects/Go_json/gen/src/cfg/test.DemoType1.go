
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Test_DemoType1 struct {
    X1 int32
}

func (Test_DemoType1) GetTypeId() int {
    return -367048296
}

func NewTest_DemoType1(_buf map[string]interface{}) (_v *Test_DemoType1, err error) {
    _v = &Test_DemoType1{}
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["x1"].(float64); !_ok_ { err = errors.New("x1 error"); return }; _v.X1 = int32(_tempNum_) }
    return
}
