
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



type Role_LevelBonus struct {
    Id int32
    DistinctBonusInfos []*Role_DistinctBonusInfos
}

func (Role_LevelBonus) GetTypeId() int {
    return -572269677
}

func NewRole_LevelBonus(_buf *serialization.ByteBuf) (_v *Role_LevelBonus, err error) {
    _v = &Role_LevelBonus{}
    { if _v.Id, err = _buf.ReadInt(); err != nil { return } }
     {
                _v.DistinctBonusInfos = make([]*Role_DistinctBonusInfos, 0)
                var _n_ int
                if _n_, err = _buf.ReadSize(); err != nil {return}
                for i := 0 ; i < _n_ ; i++ {
                    var _e_ *Role_DistinctBonusInfos
                    { if _e_, err = NewRole_DistinctBonusInfos(_buf); err != nil { return } }
                    _v.DistinctBonusInfos = append(_v.DistinctBonusInfos, _e_)
                }
            }

    return
}
