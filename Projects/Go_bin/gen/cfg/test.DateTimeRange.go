
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg

import (
    "luban_examples/go_bin/bright/serialization"
)

import "errors"

type TestDateTimeRange struct {
    StartTime int32
    EndTime int32
}

const TypeId_TestDateTimeRange = 495315430

func (*TestDateTimeRange) GetTypeId() int32 {
    return 495315430
}

func (_v *TestDateTimeRange)Serialize(_buf *serialization.ByteBuf) {
    // not support
}

func (_v *TestDateTimeRange)Deserialize(_buf *serialization.ByteBuf) (err error) {
    { if _v.StartTime, err = _buf.ReadInt(); err != nil { err = errors.New("_v.StartTime error"); return } }
    { if _v.EndTime, err = _buf.ReadInt(); err != nil { err = errors.New("_v.EndTime error"); return } }
    return
}

func DeserializeTestDateTimeRange(_buf *serialization.ByteBuf) (*TestDateTimeRange, error) {
    v := &TestDateTimeRange{}
    if err := v.Deserialize(_buf); err == nil {
        return v, nil
    } else {
        return nil, err
    }
}