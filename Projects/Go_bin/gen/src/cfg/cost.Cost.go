
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "bright/serialization"



type Cost_Cost struct {
    
}



func NewCost_Cost(_buf *serialization.ByteBuf) (_v *Cost_Cost, err error) {
    _v = &Cost_Cost{}

    return
}

func NewChildCost_Cost(_buf *serialization.ByteBuf) (_v interface{}, err error) {
    var id int32
    if id, err = _buf.ReadInt() ; err != nil {
        return
    }
    switch id {
            case 0 : return nil, nil
            case 911838111: return NewCost_CostCurrency(_buf);
            case 103084157: return NewCost_CostCurrencies(_buf);
            case -1033587381: return NewCost_CostOneItem(_buf);
            case -1249440351: return NewCost_CostItem(_buf);
            case -77945102: return NewCost_CostItems(_buf);
    }
    return
}


