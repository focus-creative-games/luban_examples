
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg;


import "errors"

type TestMultiRowType3 struct {
    Id int32
    Items []*TestMultiRowType1
}

const TypeId_TestMultiRowType3 = 540474972

func (*TestMultiRowType3) GetTypeId() int32 {
    return 540474972
}

func NewTestMultiRowType3(_buf map[string]interface{}) (_v *TestMultiRowType3, err error) {
    _v = &TestMultiRowType3{}
    { var _ok_ bool; var __json_id__ interface{}; if __json_id__, _ok_ = _buf["id"]; !_ok_ || __json_id__ == nil { err = errors.New("id error"); return } else { var __x__ int32;  { var _ok_ bool; var _x_ float64; if _x_, _ok_ = __json_id__.(float64); !_ok_ { err = errors.New("__x__ error"); return }; __x__ = int32(_x_) }; _v.Id = __x__ }}
    { var _ok_ bool; var __json_items__ interface{}; if __json_items__, _ok_ = _buf["items"]; !_ok_ || __json_items__ == nil { err = errors.New("items error"); return } else { var __x__ []*TestMultiRowType1;  {
                    var _arr0_ []interface{}
                    var _ok0_ bool
                    if _arr0_, _ok0_ = (__json_items__).([]interface{}); !_ok0_ { err = errors.New("__x__ error"); return }
    
                    __x__ = make([]*TestMultiRowType1, 0, len(_arr0_))
                    
                    for _, _e0_ := range _arr0_ {
                        var _list_v0_ *TestMultiRowType1
                        { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _e0_.(map[string]interface{}); !_ok_ { err = errors.New("_list_v0_ error"); return }; if _list_v0_, err = NewTestMultiRowType1(_x_); err != nil { return } }
                        __x__ = append(__x__, _list_v0_)
                    }
                }
    ; _v.Items = __x__ }}
    return
}

