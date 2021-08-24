
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"
import "bright/math"

type Test_DefineFromExcel struct {
    Id int32
    X1 bool
    X5 int64
    X6 float32
    X8 int32
    X10 string
    X13 int32
    X14 interface{}
    V2 math.Vector2
    T1 int32
    K1 []int32
    K8 map[int32]int32
    K9 []*Test_DemoE2
}

func (Test_DefineFromExcel) GetTypeId() int {
    return 2100429878
}

func NewTest_DefineFromExcel(_buf map[string]interface{}) (_v *Test_DefineFromExcel, err error) {
    _v = &Test_DefineFromExcel{}
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["id"].(float64); !_ok_ { err = errors.New("id error"); return }; _v.Id = int32(_tempNum_) }
    { var _ok_ bool; if _v.X1, _ok_ = _buf["x1"].(bool); !_ok_ { err = errors.New("x1 error"); return } }
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["x5"].(float64); !_ok_ { err = errors.New("x5 error"); return }; _v.X5 = int64(_tempNum_) }
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["x6"].(float64); !_ok_ { err = errors.New("x6 error"); return }; _v.X6 = float32(_tempNum_) }
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["x8"].(float64); !_ok_ { err = errors.New("x8 error"); return }; _v.X8 = int32(_tempNum_) }
    { var _ok_ bool; if _v.X10, _ok_ = _buf["x10"].(string); !_ok_ { err = errors.New("x10 error"); return } }
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["x13"].(float64); !_ok_ { err = errors.New("x13 error"); return }; _v.X13 = int32(_tempNum_) }
    { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _buf["x14"].(map[string]interface{}); !_ok_ { err = errors.New("x14 error"); return }; if _v.X14, err = NewTest_DemoDynamic(_x_); err != nil { return } }
    { var _ok_ bool; var _v_ map[string]interface{}; if _v_, _ok_ = _buf["v2"].(map[string]interface{}); !_ok_ { err = errors.New("v2 error"); return }
            var _x_, _y_ float32;
            { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _v_["x"].(float64); !_ok_ { err = errors.New("x error"); return }; _x_ = float32(_tempNum_) }
            { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _v_["y"].(float64); !_ok_ { err = errors.New("y error"); return }; _y_ = float32(_tempNum_) }
            _v.V2 = math.NewVector2(_x_, _y_)
            }

    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["t1"].(float64); !_ok_ { err = errors.New("t1 error"); return }; _v.T1 = int32(_tempNum_) }
     {
                var _arr_ []interface{}
                var _ok_ bool
                if _arr_, _ok_ = _buf["k1"].([]interface{}); !_ok_ { err = errors.New("k1 error"); return }

                _v.K1 = make([]int32, 0, len(_arr_))
                
                for _, _e_ := range _arr_ {
                    var _list_v_ int32
                    { var _ok_ bool; var _x_ float64; if _x_, _ok_ = _e_.(float64); !_ok_ { err = errors.New("_list_v_ error"); return }; _list_v_ = int32(_x_) }
                    _v.K1 = append(_v.K1, _list_v_)
                }
            }

    {
                var _arr_ []interface{}
                var _ok_ bool
                if _arr_, _ok_ = _buf["k8"].([]interface{}); !_ok_ { err = errors.New("k8 error"); return }

                _v.K8 = make(map[int32]int32)
                
                for _, _e_ := range _arr_ {
                    var _kv_ []interface{}
                    if _kv_, _ok_ = _e_.([]interface{}); !_ok_ || len(_kv_) != 2 { err = errors.New("k8 error"); return }
                    var _key_ int32
                    { var _ok_ bool; var _x_ float64; if _x_, _ok_ = _kv_[0].(float64); !_ok_ { err = errors.New("_key_ error"); return }; _key_ = int32(_x_) }
                    var _value_ int32
                    { var _ok_ bool; var _x_ float64; if _x_, _ok_ = _kv_[1].(float64); !_ok_ { err = errors.New("_value_ error"); return }; _value_ = int32(_x_) }
                    _v.K8[_key_] = _value_
                }
                }
     {
                var _arr_ []interface{}
                var _ok_ bool
                if _arr_, _ok_ = _buf["k9"].([]interface{}); !_ok_ { err = errors.New("k9 error"); return }

                _v.K9 = make([]*Test_DemoE2, 0, len(_arr_))
                
                for _, _e_ := range _arr_ {
                    var _list_v_ *Test_DemoE2
                    { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _e_.(map[string]interface{}); !_ok_ { err = errors.New("_list_v_ error"); return }; if _list_v_, err = NewTest_DemoE2(_x_); err != nil { return } }
                    _v.K9 = append(_v.K9, _list_v_)
                }
            }

    return
}
