
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg;


import "errors"

type TestMultiRowType2 struct {
    Id int32
    X int32
    Y float32
}

const TypeId_TestMultiRowType2 = 540474971

func (*TestMultiRowType2) GetTypeId() int32 {
    return 540474971
}

func NewTestMultiRowType2(_buf map[string]interface{}) (_v *TestMultiRowType2, err error) {
    _v = &TestMultiRowType2{}
    { var _ok_ bool; var __json_id__ interface{}; if __json_id__, _ok_ = _buf["id"]; !_ok_ || __json_id__ == nil { err = errors.New("id error"); return } else { var __x__ int32;  { var _ok_ bool; var _x_ float64; if _x_, _ok_ = __json_id__.(float64); !_ok_ { err = errors.New("__x__ error"); return }; __x__ = int32(_x_) }; _v.Id = __x__ }}
    { var _ok_ bool; var __json_x__ interface{}; if __json_x__, _ok_ = _buf["x"]; !_ok_ || __json_x__ == nil { err = errors.New("x error"); return } else { var __x__ int32;  { var _ok_ bool; var _x_ float64; if _x_, _ok_ = __json_x__.(float64); !_ok_ { err = errors.New("__x__ error"); return }; __x__ = int32(_x_) }; _v.X = __x__ }}
    { var _ok_ bool; var __json_y__ interface{}; if __json_y__, _ok_ = _buf["y"]; !_ok_ || __json_y__ == nil { err = errors.New("y error"); return } else { var __x__ float32;  { var _ok_ bool; var _x_ float64; if _x_, _ok_ = __json_y__.(float64); !_ok_ { err = errors.New("__x__ error"); return }; __x__ = float32(_x_) }; _v.Y = __x__ }}
    return
}

