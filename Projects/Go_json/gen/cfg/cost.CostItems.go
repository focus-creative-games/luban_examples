
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg

import "errors"

type CostCostItems struct {
    ItemList []*CostCostItem
}

const TypeId_CostCostItems = -77945102

func (*CostCostItems) GetTypeId() int32 {
    return -77945102
}

func (_v *CostCostItems)Deserialize(_buf map[string]interface{}) (err error) {
     {
                var _arr_ []interface{}
                var _ok_ bool
                if _arr_, _ok_ = _buf["item_list"].([]interface{}); !_ok_ { err = errors.New("item_list error"); return }

                _v.ItemList = make([]*CostCostItem, 0, len(_arr_))
                
                for _, _e_ := range _arr_ {
                    var _list_v_ *CostCostItem
                    { var _ok_ bool; var _x_ map[string]interface{}; if _x_, _ok_ = _e_.(map[string]interface{}); !_ok_ { err = errors.New("_list_v_ error"); return }; if _list_v_, err = DeserializeCostCostItem(_x_); err != nil { return } }
                    _v.ItemList = append(_v.ItemList, _list_v_)
                }
            }

    return
}

func DeserializeCostCostItems(_buf map[string]interface{}) (*CostCostItems, error) {
    v := &CostCostItems{}
    if err := v.Deserialize(_buf); err == nil {
        return v, nil
    } else {
        return nil, err
    }
}