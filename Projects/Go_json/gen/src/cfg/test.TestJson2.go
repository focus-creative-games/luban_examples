
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Test_TestJson2 struct {
    Id int32
    M1 map[int32]int32
    M2 map[int64]int32
    M3 map[string]int32
    M4 map[string]*Test_DemoType1
}

func (Test_TestJson2) GetTypeId() int {
    return 1942237276
}

func NewTest_TestJson2(_buf map[string]interface{}) (_v *Test_TestJson2, err error) {
    _v = &Test_TestJson2{}
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["id"].(float64); !_ok_ { err = errors.New("id error"); return }; _v.Id = int32(_tempNum_) }
    {
                var _arr_ []interface{}
                var _ok_ bool
                if _arr_, _ok_ = _buf["m1"].([]interface{}); !_ok_ { err = errors.New("m1 error"); return }

                _v.M1 = make(map[int32]int32)
                
                for _, _e_ := range _arr_ {
                    var _kv_ []interface{}
                    if _kv_, _ok_ = _e_.([]interface{}); !_ok_ || len(_kv_) != 2 { err = errors.New("m1 error"); return }
                    var _key_ int32
                    { var _ok_ bool; var _x_ float64; if _x_, _ok_ = _kv_[0].(float64); !_ok_ { err = errors.New("_key_ error"); return }; _key_ = int32(_x_) }
                    var _value_ int32
                    { var _ok_ bool; var _x_ float64; if _x_, _ok_ = _kv_[1].(float64); !_ok_ { err = errors.New("_value_ error"); return }; _value_ = int32(_x_) }
                    _v.M1[_key_] = _value_
                }
                }
    {
                var _arr_ []interface{}
                var _ok_ bool
                if _arr_, _ok_ = _buf["m2"].([]interface{}); !_ok_ { err = errors.New("m2 error"); return }

                _v.M2 = make(map[int64]int32)
                
                for _, _e_ := range _arr_ {
                    var _kv_ []interface{}
                    if _kv_, _ok_ = _e_.([]interface{}); !_ok_ || len(_kv_) != 2 { err = errors.New("m2 error"); return }
                    var _key_ int64
                    { var _ok_ bool; var _x_ float64; if _x_, _ok_ = _kv_[0].(float64); !_ok_ { err = errors.New("_key_ error"); return }; _key_ = int64(_x_) }
                    var _value_ int32
                    { var _ok_ bool; var _x_ float64; if _x_, _ok_ = _kv_[1].(float64); !_ok_ { err = errors.New("_value_ error"); return }; _value_ = int32(_x_) }
                    _v.M2[_key_] = _value_
                }
                }
    {
                var _arr_ []interface{}
                var _ok_ bool
                if _arr_, _ok_ = _buf["m3"].([]interface{}); !_ok_ { err = errors.New("m3 error"); return }

                _v.M3 = make(map[string]int32)
                
                for _, _e_ := range _arr_ {
                    var _kv_ []interface{}
                    if _kv_, _ok_ = _e_.([]interface{}); !_ok_ || len(_kv_) != 2 { err = errors.New("m3 error"); return }
                    var _key_ string
                    {  if _key_, _ok_ = _kv_[0].(string); !_ok_ { err = errors.New("_key_ error"); return } }
                    var _value_ int32
                    { var _ok_ bool; var _x_ float64; if _x_, _ok_ = _kv_[1].(float64); !_ok_ { err = errors.New("_value_ error"); return }; _value_ = int32(_x_) }
                    _v.M3[_key_] = _value_
                }
                }
    {
                var _arr_ []interface{}
                var _ok_ bool
                if _arr_, _ok_ = _buf["m4"].([]interface{}); !_ok_ { err = errors.New("m4 error"); return }

                _v.M4 = make(map[string]*Test_DemoType1)
                
                for _, _e_ := range _arr_ {
                    var _kv_ []interface{}
                    if _kv_, _ok_ = _e_.([]interface{}); !_ok_ || len(_kv_) != 2 { err = errors.New("m4 error"); return }
                    var _key_ string
                    {  if _key_, _ok_ = _kv_[0].(string); !_ok_ { err = errors.New("_key_ error"); return } }
                    var _value_ *Test_DemoType1
                    { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _kv_[1].(map[string]interface{}); !_ok_ { err = errors.New("_value_ error"); return }; if _value_, err = NewTest_DemoType1(_x_); err != nil { return } }
                    _v.M4[_key_] = _value_
                }
                }
    return
}
