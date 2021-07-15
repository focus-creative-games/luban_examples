
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

import "bright/math"

type Test_DemoType2 struct {
    X4 int32
    X1 bool
    X2 byte
    X3 int16
    X5 int64
    X6 float32
    X7 float64
    X80 int16
    X8 int32
    X9 int64
    X10 string
    X12 *Test_DemoType1
    X13 int32
    X14 interface{}
    S1 string
    V2 math.Vector2
    V3 math.Vector3
    V4 math.Vector4
    T1 int32
    K1 []int32
    K2 []int32
    K3 []int32
    K4 []int32
    K5 []int32
    K6 []int32
    K7 []int32
    K8 map[int32]int32
    K9 []*Test_DemoE2
    K15 []interface{}
}

func (Test_DemoType2) GetTypeId() int {
    return -367048295
}

func NewTest_DemoType2(_buf *serialization.ByteBuf) (_v *Test_DemoType2, err error) {
    _v = &Test_DemoType2{}
    { if _v.X4, err = _buf.ReadInt(); err != nil { return } }
    { if _v.X1, err = _buf.ReadBool(); err != nil { return } }
    { if _v.X2, err = _buf.ReadByte(); err != nil { return } }
    { if _v.X3, err = _buf.ReadShort(); err != nil { return } }
    { if _v.X5, err = _buf.ReadLong(); err != nil { return } }
    { if _v.X6, err = _buf.ReadFloat(); err != nil { return } }
    { if _v.X7, err = _buf.ReadDouble(); err != nil { return } }
    { if _v.X80, err = _buf.ReadFshort(); err != nil { return } }
    { if _v.X8, err = _buf.ReadFint(); err != nil { return } }
    { if _v.X9, err = _buf.ReadFlong(); err != nil { return } }
    { if _v.X10, err = _buf.ReadString(); err != nil { return } }
    { if _v.X12, err = NewTest_DemoType1(_buf); err != nil { return } }
    { if _v.X13, err = _buf.ReadInt(); err != nil { return } }
    { if _v.X14, err = NewTest_DemoDynamic(_buf); err != nil { return } }
    { if _v.S1, err = _buf.ReadString(); err != nil { return } }
    { if _v.V2, err = _buf.ReadVector2(); err != nil { return } }
    { if _v.V3, err = _buf.ReadVector3(); err != nil { return } }
    { if _v.V4, err = _buf.ReadVector4(); err != nil { return } }
    { if _v.T1, err = _buf.ReadInt(); err != nil { return } }
     {
                _v.K1 = make([]int32, 0)
                var _n_ int
                if _n_, err = _buf.ReadSize(); err != nil {return}
                for i := 0 ; i < _n_ ; i++ {
                    var _e_ int32
                    { if _e_, err = _buf.ReadInt(); err != nil { return } }
                    _v.K1 = append(_v.K1, _e_)
                }
            }

     {
                _v.K2 = make([]int32, 0)
                var _n_ int
                if _n_, err = _buf.ReadSize(); err != nil {return}
                for i := 0 ; i < _n_ ; i++ {
                    var _e_ int32
                    { if _e_, err = _buf.ReadInt(); err != nil { return } }
                    _v.K2 = append(_v.K2, _e_)
                }
            }

     {
                _v.K3 = make([]int32, 0)
                var _n_ int
                if _n_, err = _buf.ReadSize(); err != nil {return}
                for i := 0 ; i < _n_ ; i++ {
                    var _e_ int32
                    { if _e_, err = _buf.ReadInt(); err != nil { return } }
                    _v.K3 = append(_v.K3, _e_)
                }
            }

     {
                _v.K4 = make([]int32, 0)
                var _n_ int
                if _n_, err = _buf.ReadSize(); err != nil {return}
                for i := 0 ; i < _n_ ; i++ {
                    var _e_ int32
                    { if _e_, err = _buf.ReadInt(); err != nil { return } }
                    _v.K4 = append(_v.K4, _e_)
                }
            }

     {
                _v.K5 = make([]int32, 0)
                var _n_ int
                if _n_, err = _buf.ReadSize(); err != nil {return}
                for i := 0 ; i < _n_ ; i++ {
                    var _e_ int32
                    { if _e_, err = _buf.ReadInt(); err != nil { return } }
                    _v.K5 = append(_v.K5, _e_)
                }
            }

     {
                _v.K6 = make([]int32, 0)
                var _n_ int
                if _n_, err = _buf.ReadSize(); err != nil {return}
                for i := 0 ; i < _n_ ; i++ {
                    var _e_ int32
                    { if _e_, err = _buf.ReadInt(); err != nil { return } }
                    _v.K6 = append(_v.K6, _e_)
                }
            }

     {
                _v.K7 = make([]int32, 0)
                var _n_ int
                if _n_, err = _buf.ReadSize(); err != nil {return}
                for i := 0 ; i < _n_ ; i++ {
                    var _e_ int32
                    { if _e_, err = _buf.ReadInt(); err != nil { return } }
                    _v.K7 = append(_v.K7, _e_)
                }
            }

    {
                _v.K8 = make(map[int32]int32)
                var _n_ int
                if _n_, err = _buf.ReadSize(); err != nil {return}
                for i := 0 ; i < _n_ ; i++ {
                    var _key_ int32
                    { if _key_, err = _buf.ReadInt(); err != nil { return } }
                    var _value_ int32
                    { if _value_, err = _buf.ReadInt(); err != nil { return } }
                    _v.K8[_key_] = _value_
                }
                }
     {
                _v.K9 = make([]*Test_DemoE2, 0)
                var _n_ int
                if _n_, err = _buf.ReadSize(); err != nil {return}
                for i := 0 ; i < _n_ ; i++ {
                    var _e_ *Test_DemoE2
                    { if _e_, err = NewTest_DemoE2(_buf); err != nil { return } }
                    _v.K9 = append(_v.K9, _e_)
                }
            }

     {
                _v.K15 = make([]interface{}, 0)
                var _n_ int
                if _n_, err = _buf.ReadSize(); err != nil {return}
                for i := 0 ; i < _n_ ; i++ {
                    var _e_ interface{}
                    { if _e_, err = NewTest_DemoDynamic(_buf); err != nil { return } }
                    _v.K15 = append(_v.K15, _e_)
                }
            }

    return
}

