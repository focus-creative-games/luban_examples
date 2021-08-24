
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Mail_GlobalMail struct {
    Id int32
    Title string
    Sender string
    Content string
    Award []int32
    AllServer bool
    ServerList []int32
    Platform string
    Channel string
    MinMaxLevel *Condition_MinMaxLevel
    RegisterTime *Condition_TimeRange
    MailTime *Condition_TimeRange
}

func (Mail_GlobalMail) GetTypeId() int {
    return -287571791
}

func NewMail_GlobalMail(_buf map[string]interface{}) (_v *Mail_GlobalMail, err error) {
    _v = &Mail_GlobalMail{}
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["id"].(float64); !_ok_ { err = errors.New("id error"); return }; _v.Id = int32(_tempNum_) }
    { var _ok_ bool; if _v.Title, _ok_ = _buf["title"].(string); !_ok_ { err = errors.New("title error"); return } }
    { var _ok_ bool; if _v.Sender, _ok_ = _buf["sender"].(string); !_ok_ { err = errors.New("sender error"); return } }
    { var _ok_ bool; if _v.Content, _ok_ = _buf["content"].(string); !_ok_ { err = errors.New("content error"); return } }
     {
                var _arr_ []interface{}
                var _ok_ bool
                if _arr_, _ok_ = _buf["award"].([]interface{}); !_ok_ { err = errors.New("award error"); return }

                _v.Award = make([]int32, 0, len(_arr_))
                
                for _, _e_ := range _arr_ {
                    var _list_v_ int32
                    { var _ok_ bool; var _x_ float64; if _x_, _ok_ = _e_.(float64); !_ok_ { err = errors.New("_list_v_ error"); return }; _list_v_ = int32(_x_) }
                    _v.Award = append(_v.Award, _list_v_)
                }
            }

    { var _ok_ bool; if _v.AllServer, _ok_ = _buf["all_server"].(bool); !_ok_ { err = errors.New("all_server error"); return } }
     {
                var _arr_ []interface{}
                var _ok_ bool
                if _arr_, _ok_ = _buf["server_list"].([]interface{}); !_ok_ { err = errors.New("server_list error"); return }

                _v.ServerList = make([]int32, 0, len(_arr_))
                
                for _, _e_ := range _arr_ {
                    var _list_v_ int32
                    { var _ok_ bool; var _x_ float64; if _x_, _ok_ = _e_.(float64); !_ok_ { err = errors.New("_list_v_ error"); return }; _list_v_ = int32(_x_) }
                    _v.ServerList = append(_v.ServerList, _list_v_)
                }
            }

    { var _ok_ bool; if _v.Platform, _ok_ = _buf["platform"].(string); !_ok_ { err = errors.New("platform error"); return } }
    { var _ok_ bool; if _v.Channel, _ok_ = _buf["channel"].(string); !_ok_ { err = errors.New("channel error"); return } }
    { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _buf["min_max_level"].(map[string]interface{}); !_ok_ { err = errors.New("min_max_level error"); return }; if _v.MinMaxLevel, err = NewCondition_MinMaxLevel(_x_); err != nil { return } }
    { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _buf["register_time"].(map[string]interface{}); !_ok_ { err = errors.New("register_time error"); return }; if _v.RegisterTime, err = NewCondition_TimeRange(_x_); err != nil { return } }
    { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _buf["mail_time"].(map[string]interface{}); !_ok_ { err = errors.New("mail_time error"); return }; if _v.MailTime, err = NewCondition_TimeRange(_x_); err != nil { return } }
    return
}
