
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg;


import (
    "demo/luban"
)

import "errors"

type DefineFromExcel2 struct {
    Id int32
    X1 bool
    X5 int64
    X6 float32
    X8 int32
    X10 string
    X13 int32
    X132 int32
    X14 interface{}
    X15 interface{}
    V2 *vec2
    T1 int64
    K1 []int32
    K2 []int32
    K8 map[int32]int32
    K9 []*TestDemoE2
    K10 []*vec3
    K11 []*vec4
    V11 *vec3
}

const TypeId_DefineFromExcel2 = 482045152

func (*DefineFromExcel2) GetTypeId() int32 {
    return 482045152
}

func NewDefineFromExcel2(_buf *luban.ByteBuf) (_v *DefineFromExcel2, err error) {
    _v = &DefineFromExcel2{}
    { if _v.Id, err = _buf.ReadInt(); err != nil { err = errors.New("error"); return } }
    { if _v.X1, err = _buf.ReadBool(); err != nil { err = errors.New("error"); err = errors.New("error"); return } }
    { if _v.X5, err = _buf.ReadLong(); err != nil { err = errors.New("error"); return } }
    { if _v.X6, err = _buf.ReadFloat(); err != nil { err = errors.New("error"); return } }
    { if _v.X8, err = _buf.ReadInt(); err != nil { err = errors.New("error"); return } }
    { if _v.X10, err = _buf.ReadString(); err != nil { err = errors.New("error"); return } }
    { if _v.X13, err = _buf.ReadInt(); err != nil { err = errors.New("error"); return } }
    { if _v.X132, err = _buf.ReadInt(); err != nil { err = errors.New("error"); return } }
    { if _v.X14, err = NewTestDemoDynamic(_buf); err != nil { err = errors.New("error"); return } }
    { if _v.X15, err = NewTestShape(_buf); err != nil { err = errors.New("error"); return } }
    { if _v.V2, err = Newvec2(_buf); err != nil { err = errors.New("error"); return } }
    { if _v.T1, err = _buf.ReadLong(); err != nil { err = errors.New("error"); return } }
    {_v.K1 = make([]int32, 0); var _n0_ int; if _n0_, err = _buf.ReadSize(); err != nil { err = errors.New("error"); return}; for i0 := 0 ; i0 < _n0_ ; i0++ { var _e0_ int32; { if _e0_, err = _buf.ReadInt(); err != nil { err = errors.New("error"); return } }; _v.K1 = append(_v.K1, _e0_) } }
    {_v.K2 = make([]int32, 0); var _n0_ int; if _n0_, err = _buf.ReadSize(); err != nil { err = errors.New("error"); return}; for i0 := 0 ; i0 < _n0_ ; i0++ { var _e0_ int32; { if _e0_, err = _buf.ReadInt(); err != nil { err = errors.New("error"); return } }; _v.K2 = append(_v.K2, _e0_) } }
    { _v.K8 = make(map[int32]int32); var _n0_ int; if _n0_, err = _buf.ReadSize(); err != nil { err = errors.New("error"); return}; for i0 := 0 ; i0 < _n0_ ; i0++ { var _key0_ int32; { if _key0_, err = _buf.ReadInt(); err != nil { err = errors.New("error"); return } }; var _value0_ int32; { if _value0_, err = _buf.ReadInt(); err != nil { err = errors.New("error"); return } }; _v.K8[_key0_] = _value0_} }
    {_v.K9 = make([]*TestDemoE2, 0); var _n0_ int; if _n0_, err = _buf.ReadSize(); err != nil { err = errors.New("error"); return}; for i0 := 0 ; i0 < _n0_ ; i0++ { var _e0_ *TestDemoE2; { if _e0_, err = NewTestDemoE2(_buf); err != nil { err = errors.New("error"); return } }; _v.K9 = append(_v.K9, _e0_) } }
    {_v.K10 = make([]*vec3, 0); var _n0_ int; if _n0_, err = _buf.ReadSize(); err != nil { err = errors.New("error"); return}; for i0 := 0 ; i0 < _n0_ ; i0++ { var _e0_ *vec3; { if _e0_, err = Newvec3(_buf); err != nil { err = errors.New("error"); return } }; _v.K10 = append(_v.K10, _e0_) } }
    {_v.K11 = make([]*vec4, 0); var _n0_ int; if _n0_, err = _buf.ReadSize(); err != nil { err = errors.New("error"); return}; for i0 := 0 ; i0 < _n0_ ; i0++ { var _e0_ *vec4; { if _e0_, err = Newvec4(_buf); err != nil { err = errors.New("error"); return } }; _v.K11 = append(_v.K11, _e0_) } }
    { var __exists__ bool; if __exists__, err = _buf.ReadBool(); err != nil { return }; if __exists__ { var __x__ *vec3;  { if __x__, err = Newvec3(_buf); err != nil { err = errors.New("error"); return } }; _v.V11 = __x__ }}
    return
}

