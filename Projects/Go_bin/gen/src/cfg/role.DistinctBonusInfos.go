
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "bright/serialization"



type Role_DistinctBonusInfos struct {
    
    EffectiveLevel int32
    BonusInfo []*Role_BonusInfo
}


func (Role_DistinctBonusInfos) GetTypeId() int {
    return -854361766
}


func NewRole_DistinctBonusInfos(_buf *serialization.ByteBuf) (_v *Role_DistinctBonusInfos, err error) {
    _v = &Role_DistinctBonusInfos{}

    if _v.EffectiveLevel, err = _buf.ReadInt(); err != nil  { return } 
    if _v.BonusInfo, err = func (_buf2 *serialization.ByteBuf) (_v2 []*Role_BonusInfo, err2 error) {
                _v2 = make([]*Role_BonusInfo, 0)
                var n int
                if n, err2 = _buf2.ReadSize(); err2 != nil {return}
                for i := 0 ; i < n ; i++ {
                    var v3 *Role_BonusInfo
                    if v3, err2 = NewRole_BonusInfo (_buf2); err2 != nil {return}
                    _v2 = append(_v2, v3)
                }
                return
                }(_buf); err != nil  { return } 
    return
}


