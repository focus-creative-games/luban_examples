
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg;


import "errors"

type TestTestString struct {
    Id string
    S1 string
    S2 string
    Cs1 *TestCompactString
    Cs2 *TestCompactString
}

const TypeId_TestTestString = 338485823

func (*TestTestString) GetTypeId() int32 {
    return 338485823
}

func NewTestTestString(_buf map[string]interface{}) (_v *TestTestString, err error) {
    _v = &TestTestString{}
    { var _ok_ bool; var __json_id__ interface{}; if __json_id__, _ok_ = _buf["id"]; !_ok_ || __json_id__ == nil { err = errors.New("id error"); return } else { var __x__ string;  {  if __x__, _ok_ = __json_id__.(string); !_ok_ { err = errors.New("__x__ error"); return } }; _v.Id = __x__ }}
    { var _ok_ bool; var __json_s1__ interface{}; if __json_s1__, _ok_ = _buf["s1"]; !_ok_ || __json_s1__ == nil { err = errors.New("s1 error"); return } else { var __x__ string;  {  if __x__, _ok_ = __json_s1__.(string); !_ok_ { err = errors.New("__x__ error"); return } }; _v.S1 = __x__ }}
    { var _ok_ bool; var __json_s2__ interface{}; if __json_s2__, _ok_ = _buf["s2"]; !_ok_ || __json_s2__ == nil { err = errors.New("s2 error"); return } else { var __x__ string;  {  if __x__, _ok_ = __json_s2__.(string); !_ok_ { err = errors.New("__x__ error"); return } }; _v.S2 = __x__ }}
    { var _ok_ bool; var __json_cs1__ interface{}; if __json_cs1__, _ok_ = _buf["cs1"]; !_ok_ || __json_cs1__ == nil { err = errors.New("cs1 error"); return } else { var __x__ *TestCompactString;  { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = __json_cs1__.(map[string]interface{}); !_ok_ { err = errors.New("__x__ error"); return }; if __x__, err = NewTestCompactString(_x_); err != nil { return } }; _v.Cs1 = __x__ }}
    { var _ok_ bool; var __json_cs2__ interface{}; if __json_cs2__, _ok_ = _buf["cs2"]; !_ok_ || __json_cs2__ == nil { err = errors.New("cs2 error"); return } else { var __x__ *TestCompactString;  { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = __json_cs2__.(map[string]interface{}); !_ok_ { err = errors.New("__x__ error"); return }; if __x__, err = NewTestCompactString(_x_); err != nil { return } }; _v.Cs2 = __x__ }}
    return
}

