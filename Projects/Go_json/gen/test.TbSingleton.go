
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg;



import "errors"

type TestTbSingleton struct {
    _data *TestDemoSingletonType
}

func NewTestTbSingleton(_buf []map[string]interface{}) (*TestTbSingleton, error) {
	if len(_buf) != 1 {
        return nil, errors.New(" size != 1 ")
	} else {
		if _v, err2 := NewTestDemoSingletonType(_buf[0]); err2 != nil {
			return nil, err2
		} else {
		    return &TestTbSingleton{_data:_v}, nil
		}
	}
}

func (table *TestTbSingleton) Get() *TestDemoSingletonType {
    return table._data
}


