
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg;


import "errors"

type TestPath struct {
    Id int32
    Res string
}

const TypeId_TestPath = -1226450911

func (*TestPath) GetTypeId() int32 {
    return -1226450911
}

func NewTestPath(_buf map[string]interface{}) (_v *TestPath, err error) {
    _v = &TestPath{}
    { var _ok_ bool; var __json_id__ interface{}; if __json_id__, _ok_ = _buf["id"]; !_ok_ || __json_id__ == nil { err = errors.New("id error"); return } else { var __x__ int32;  { var _ok_ bool; var _x_ float64; if _x_, _ok_ = __json_id__.(float64); !_ok_ { err = errors.New("__x__ error"); return }; __x__ = int32(_x_) }; _v.Id = __x__ }}
    { var _ok_ bool; var __json_res__ interface{}; if __json_res__, _ok_ = _buf["res"]; !_ok_ || __json_res__ == nil { err = errors.New("res error"); return } else { var __x__ string;  {  if __x__, _ok_ = __json_res__.(string); !_ok_ { err = errors.New("__x__ error"); return } }; _v.Res = __x__ }}
    return
}

