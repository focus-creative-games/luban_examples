
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "errors"

type Cost_CostItems struct {
    Cost_Cost
    ItemList []*Cost_CostItem
}

func (Cost_CostItems) GetTypeId() int {
    return -77945102
}

func NewCost_CostItems(_buf map[string]interface{}) (_v *Cost_CostItems, err error) {
    _v = &Cost_CostItems{}
    var _p *Cost_Cost
     if _p, err = NewCost_Cost_Body(_buf) ; err != nil { return }
    _v.Cost_Cost = *_p
     {
                var _arr_ []interface{}
                var _ok_ bool
                if _arr_, _ok_ = _buf["item_list"].([]interface{}); !_ok_ { err = errors.New("item_list error"); return }

                _v.ItemList = make([]*Cost_CostItem, 0, len(_arr_))
                
                for _, _e_ := range _arr_ {
                    var _list_v_ *Cost_CostItem
                    { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _e_.(map[string]interface{}); !_ok_ { err = errors.New("_list_v_ error"); return }; if _list_v_, err = NewCost_CostItem(_x_); err != nil { return } }
                    _v.ItemList = append(_v.ItemList, _list_v_)
                }
            }

    return
}
