
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import (
    "bright/serialization"
)



type Item_DesignDrawing struct {
    Item_ItemExtra
    LearnComponentId []int32
}

func (Item_DesignDrawing) GetTypeId() int {
    return -1679179579
}

func NewItem_DesignDrawing(_buf *serialization.ByteBuf) (_v *Item_DesignDrawing, err error) {
    _v = &Item_DesignDrawing{}
    var _p *Item_ItemExtra
     if _p, err = NewItem_ItemExtra_Body(_buf) ; err != nil { return }
    _v.Item_ItemExtra = *_p
     {
                _v.LearnComponentId = make([]int32, 0)
                var _n_ int
                if _n_, err = _buf.ReadSize(); err != nil {return}
                for i := 0 ; i < _n_ ; i++ {
                    var _e_ int32
                    { if _e_, err = _buf.ReadInt(); err != nil { return } }
                    _v.LearnComponentId = append(_v.LearnComponentId, _e_)
                }
            }

    return
}
