
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "bright/serialization"



type Role_LevelBonus struct {
    
    Id int32
    DistinctBonusInfos []*Role_DistinctBonusInfos
}


func (Role_LevelBonus) GetTypeId() int {
    return -572269677
}


func NewRole_LevelBonus(_buf *serialization.ByteBuf) (_v *Role_LevelBonus, err error) {
    _v = &Role_LevelBonus{}

    if _v.Id, err = _buf.ReadInt(); err != nil  { return } 
    if _v.DistinctBonusInfos, err = func (_buf2 *serialization.ByteBuf) (_v2 []*Role_DistinctBonusInfos, err2 error) {
                _v2 = make([]*Role_DistinctBonusInfos, 0)
                var n int
                if n, err2 = _buf2.ReadSize(); err2 != nil {return}
                for i := 0 ; i < n ; i++ {
                    var v3 *Role_DistinctBonusInfos
                    if v3, err2 = NewRole_DistinctBonusInfos (_buf2); err2 != nil {return}
                    _v2 = append(_v2, v3)
                }
                return
                }(_buf); err != nil  { return } 
    return
}


