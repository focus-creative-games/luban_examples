
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Cost_CostCurrency struct {
    Cost_Cost
    Type int32
    Num int32
}

func (Cost_CostCurrency) GetTypeId() int {
    return 911838111
}

func NewCost_CostCurrency(_buf map[string]interface{}) (_v *Cost_CostCurrency, err error) {
    _v = &Cost_CostCurrency{}
    var _p *Cost_Cost
     if _p, err = NewCost_Cost_Body(_buf) ; err != nil { return }
    _v.Cost_Cost = *_p
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["type"].(float64); !_ok_ { err = errors.New("type error"); return }; _v.Type = int32(_tempNum_) }
    { var _ok_ bool; var _tempNum_ float64; if _tempNum_, _ok_ = _buf["num"].(float64); !_ok_ { err = errors.New("num error"); return }; _v.Num = int32(_tempNum_) }
    return
}

