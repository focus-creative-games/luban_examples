
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Test_DemoSingletonType struct {
    Id int32
    Name string
    Date interface{}
}

func (Test_DemoSingletonType) GetTypeId() int {
    return 539196998
}

func NewTest_DemoSingletonType(_buf map[string]interface{}) (_v *Test_DemoSingletonType, err error) {
    _v = &Test_DemoSingletonType{}
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["id"].(float64); !_ok_ { err = errors.New("id error"); return }; _v.Id = int32(_tempNum_) }
    { var _ok_ bool; if _v.Name, _ok_ = _buf["name"].(string); !_ok_ { err = errors.New("name error"); return } }
    { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _buf["date"].(map[string]interface{}); !_ok_ { err = errors.New("date error"); return }; if _v.Date, err = NewTest_DemoDynamic(_x_); err != nil { return } }
    return
}
