
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

type AiUeWaitBlackboardTime struct {
    Id int32
    NodeName string
    Decorators []interface{}
    Services []interface{}
    IgnoreRestartSelf bool
    BlackboardKey string
}

const TypeId_AiUeWaitBlackboardTime = 1215378271

func (*AiUeWaitBlackboardTime) GetTypeId() int32 {
    return 1215378271
}

func NewAiUeWaitBlackboardTime(_buf *luban.ByteBuf) (_v *AiUeWaitBlackboardTime, err error) {
    _v = &AiUeWaitBlackboardTime{}
    { if _v.Id, err = _buf.ReadInt(); err != nil { err = errors.New("error"); return } }
    { if _v.NodeName, err = _buf.ReadString(); err != nil { err = errors.New("error"); return } }
    {_v.Decorators = make([]interface{}, 0); var _n0_ int; if _n0_, err = _buf.ReadSize(); err != nil { err = errors.New("error"); return}; for i0 := 0 ; i0 < _n0_ ; i0++ { var _e0_ interface{}; { if _e0_, err = NewAiDecorator(_buf); err != nil { err = errors.New("error"); return } }; _v.Decorators = append(_v.Decorators, _e0_) } }
    {_v.Services = make([]interface{}, 0); var _n0_ int; if _n0_, err = _buf.ReadSize(); err != nil { err = errors.New("error"); return}; for i0 := 0 ; i0 < _n0_ ; i0++ { var _e0_ interface{}; { if _e0_, err = NewAiService(_buf); err != nil { err = errors.New("error"); return } }; _v.Services = append(_v.Services, _e0_) } }
    { if _v.IgnoreRestartSelf, err = _buf.ReadBool(); err != nil { err = errors.New("error"); err = errors.New("error"); return } }
    { if _v.BlackboardKey, err = _buf.ReadString(); err != nil { err = errors.New("error"); return } }
    return
}

