
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg;


import "errors"

type TestRefBean struct {
    X int32
    Arr []int32
}

const TypeId_TestRefBean = 1963260263

func (*TestRefBean) GetTypeId() int32 {
    return 1963260263
}

func NewTestRefBean(_buf map[string]interface{}) (_v *TestRefBean, err error) {
    _v = &TestRefBean{}
    { var _ok_ bool; var __json_x__ interface{}; if __json_x__, _ok_ = _buf["x"]; !_ok_ || __json_x__ == nil { err = errors.New("x error"); return } else { var __x__ int32;  { var _ok_ bool; var _x_ float64; if _x_, _ok_ = __json_x__.(float64); !_ok_ { err = errors.New("__x__ error"); return }; __x__ = int32(_x_) }; _v.X = __x__ }}
    { var _ok_ bool; var __json_arr__ interface{}; if __json_arr__, _ok_ = _buf["arr"]; !_ok_ || __json_arr__ == nil { err = errors.New("arr error"); return } else { var __x__ []int32;  {
                    var _arr0_ []interface{}
                    var _ok0_ bool
                    if _arr0_, _ok0_ = (__json_arr__).([]interface{}); !_ok0_ { err = errors.New("__x__ error"); return }
    
                    __x__ = make([]int32, 0, len(_arr0_))
                    
                    for _, _e0_ := range _arr0_ {
                        var _list_v0_ int32
                        { var _ok_ bool; var _x_ float64; if _x_, _ok_ = _e0_.(float64); !_ok_ { err = errors.New("_list_v0_ error"); return }; _list_v0_ = int32(_x_) }
                        __x__ = append(__x__, _list_v0_)
                    }
                }
    ; _v.Arr = __x__ }}
    return
}

