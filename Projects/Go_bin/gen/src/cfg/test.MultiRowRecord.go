
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



type Test_MultiRowRecord struct {
    Id int32
    Name string
    OneRows []*Test_MultiRowType1
    MultiRows1 []*Test_MultiRowType1
    MultiRows2 []*Test_MultiRowType1
    MultiRows3 []*Test_MultiRowType2
    MultiRows4 map[int32]*Test_MultiRowType2
}

func (Test_MultiRowRecord) GetTypeId() int {
    return -501249394
}

func NewTest_MultiRowRecord(_buf *serialization.ByteBuf) (_v *Test_MultiRowRecord, err error) {
    _v = &Test_MultiRowRecord{}
    { if _v.Id, err = _buf.ReadInt(); err != nil { return } }
    { if _v.Name, err = _buf.ReadString(); err != nil { return } }
     {
                _v.OneRows = make([]*Test_MultiRowType1, 0)
                var _n_ int
                if _n_, err = _buf.ReadSize(); err != nil {return}
                for i := 0 ; i < _n_ ; i++ {
                    var _e_ *Test_MultiRowType1
                    { if _e_, err = NewTest_MultiRowType1(_buf); err != nil { return } }
                    _v.OneRows = append(_v.OneRows, _e_)
                }
            }

     {
                _v.MultiRows1 = make([]*Test_MultiRowType1, 0)
                var _n_ int
                if _n_, err = _buf.ReadSize(); err != nil {return}
                for i := 0 ; i < _n_ ; i++ {
                    var _e_ *Test_MultiRowType1
                    { if _e_, err = NewTest_MultiRowType1(_buf); err != nil { return } }
                    _v.MultiRows1 = append(_v.MultiRows1, _e_)
                }
            }

     {
                _v.MultiRows2 = make([]*Test_MultiRowType1, 0)
                var _n_ int
                if _n_, err = _buf.ReadSize(); err != nil {return}
                for i := 0 ; i < _n_ ; i++ {
                    var _e_ *Test_MultiRowType1
                    { if _e_, err = NewTest_MultiRowType1(_buf); err != nil { return } }
                    _v.MultiRows2 = append(_v.MultiRows2, _e_)
                }
            }

     {
                _v.MultiRows3 = make([]*Test_MultiRowType2, 0)
                var _n_ int
                if _n_, err = _buf.ReadSize(); err != nil {return}
                for i := 0 ; i < _n_ ; i++ {
                    var _e_ *Test_MultiRowType2
                    { if _e_, err = NewTest_MultiRowType2(_buf); err != nil { return } }
                    _v.MultiRows3 = append(_v.MultiRows3, _e_)
                }
            }

    {
                _v.MultiRows4 = make(map[int32]*Test_MultiRowType2)
                var _n_ int
                if _n_, err = _buf.ReadSize(); err != nil {return}
                for i := 0 ; i < _n_ ; i++ {
                    var _key_ int32
                    { if _key_, err = _buf.ReadInt(); err != nil { return } }
                    var _value_ *Test_MultiRowType2
                    { if _value_, err = NewTest_MultiRowType2(_buf); err != nil { return } }
                    _v.MultiRows4[_key_] = _value_
                }
                }
    return
}

