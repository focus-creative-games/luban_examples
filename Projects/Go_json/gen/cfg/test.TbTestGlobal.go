
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg


import "errors"

type TestTbTestGlobal struct {
    _data *TestTestGlobal
}

func NewTestTbTestGlobal(_buf []map[string]interface{}) (*TestTbTestGlobal, error) {
	if len(_buf) != 1 {
        return nil, errors.New(" size != 1 ")
	} else {
		if _v, err2 := DeserializeTestTestGlobal(_buf[0]); err2 != nil {
			return nil, err2
		} else {
		    return &TestTbTestGlobal{_data:_v}, nil
		}
	}
}

func (table *TestTbTestGlobal) Get() *TestTestGlobal {
    return table._data
}
