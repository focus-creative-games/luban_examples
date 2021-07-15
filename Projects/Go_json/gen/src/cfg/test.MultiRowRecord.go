
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Test_MultiRowRecord struct {
    Id int32
    Name string
    OneRows []*Test_MultiRowType1
    MultiRows1 []*Test_MultiRowType1
    MultiRows2 []*Test_MultiRowType1
    MultiRows3 []*Test_MultiRowType2
    MultiRows4 map[int32]*Test_MultiRowType2
}

func (Test_MultiRowRecord) GetTypeId() int {
    return -501249394
}

func NewTest_MultiRowRecord(_buf map[string]interface{}) (_v *Test_MultiRowRecord, err error) {
    _v = &Test_MultiRowRecord{}
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["id"].(float64); !_ok_ { err = errors.New("id error"); return }; _v.Id = int32(_tempNum_) }
    { var _ok_ bool; if _v.Name, _ok_ = _buf["name"].(string); !_ok_ { err = errors.New("name error"); return } }
     {
                var _arr_ []interface{}
                var _ok_ bool
                if _arr_, _ok_ = _buf["one_rows"].([]interface{}); !_ok_ { err = errors.New("one_rows error"); return }

                _v.OneRows = make([]*Test_MultiRowType1, 0, len(_arr_))
                
                for _, _e_ := range _arr_ {
                    var _list_v_ *Test_MultiRowType1
                    { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _e_.(map[string]interface{}); !_ok_ { err = errors.New("_list_v_ error"); return }; if _list_v_, err = NewTest_MultiRowType1(_x_); err != nil { return } }
                    _v.OneRows = append(_v.OneRows, _list_v_)
                }
            }

     {
                var _arr_ []interface{}
                var _ok_ bool
                if _arr_, _ok_ = _buf["multi_rows1"].([]interface{}); !_ok_ { err = errors.New("multi_rows1 error"); return }

                _v.MultiRows1 = make([]*Test_MultiRowType1, 0, len(_arr_))
                
                for _, _e_ := range _arr_ {
                    var _list_v_ *Test_MultiRowType1
                    { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _e_.(map[string]interface{}); !_ok_ { err = errors.New("_list_v_ error"); return }; if _list_v_, err = NewTest_MultiRowType1(_x_); err != nil { return } }
                    _v.MultiRows1 = append(_v.MultiRows1, _list_v_)
                }
            }

     {
                var _arr_ []interface{}
                var _ok_ bool
                if _arr_, _ok_ = _buf["multi_rows2"].([]interface{}); !_ok_ { err = errors.New("multi_rows2 error"); return }

                _v.MultiRows2 = make([]*Test_MultiRowType1, 0, len(_arr_))
                
                for _, _e_ := range _arr_ {
                    var _list_v_ *Test_MultiRowType1
                    { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _e_.(map[string]interface{}); !_ok_ { err = errors.New("_list_v_ error"); return }; if _list_v_, err = NewTest_MultiRowType1(_x_); err != nil { return } }
                    _v.MultiRows2 = append(_v.MultiRows2, _list_v_)
                }
            }

     {
                var _arr_ []interface{}
                var _ok_ bool
                if _arr_, _ok_ = _buf["multi_rows3"].([]interface{}); !_ok_ { err = errors.New("multi_rows3 error"); return }

                _v.MultiRows3 = make([]*Test_MultiRowType2, 0, len(_arr_))
                
                for _, _e_ := range _arr_ {
                    var _list_v_ *Test_MultiRowType2
                    { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _e_.(map[string]interface{}); !_ok_ { err = errors.New("_list_v_ error"); return }; if _list_v_, err = NewTest_MultiRowType2(_x_); err != nil { return } }
                    _v.MultiRows3 = append(_v.MultiRows3, _list_v_)
                }
            }

    {
                var _arr_ []interface{}
                var _ok_ bool
                if _arr_, _ok_ = _buf["multi_rows4"].([]interface{}); !_ok_ { err = errors.New("multi_rows4 error"); return }

                _v.MultiRows4 = make(map[int32]*Test_MultiRowType2)
                
                for _, _e_ := range _arr_ {
                    var _kv_ []interface{}
                    if _kv_, _ok_ = _e_.([]interface{}); !_ok_ || len(_kv_) != 2 { err = errors.New("multi_rows4 error"); return }
                    var _key_ int32
                    { var _ok_ bool; var _x_ float64; if _x_, _ok_ = _kv_[0].(float64); !_ok_ { err = errors.New("_key_ error"); return }; _key_ = int32(_x_) }
                    var _value_ *Test_MultiRowType2
                    { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _kv_[1].(map[string]interface{}); !_ok_ { err = errors.New("_value_ error"); return }; if _value_, err = NewTest_MultiRowType2(_x_); err != nil { return } }
                    _v.MultiRows4[_key_] = _value_
                }
                }
    return
}

