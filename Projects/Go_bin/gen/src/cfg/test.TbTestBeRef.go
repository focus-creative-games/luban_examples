
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg

import "bright/serialization"

type TestTbTestBeRef struct {
    _dataMap map[int32]*TestTestBeRef
    _dataList []*TestTestBeRef
}

func NewTestTbTestBeRef(_buf *serialization.ByteBuf) (*TestTbTestBeRef, error) {
	if size, err := _buf.ReadSize() ; err != nil {
		return nil, err
	} else {
		_dataList := make([]*TestTestBeRef, 0, size)
		dataMap := make(map[int32]*TestTestBeRef)

		for i := 0 ; i < size ; i++ {
			if _v, err2 := DeserializeTestTestBeRef(_buf); err2 != nil {
				return nil, err2
			} else {
				_dataList = append(_dataList, _v)
				dataMap[_v.Id] = _v
			}
		}
		return &TestTbTestBeRef{_dataList:_dataList, _dataMap:dataMap}, nil
	}
}

func (table *TestTbTestBeRef) GetDataMap() map[int32]*TestTestBeRef {
    return table._dataMap
}

func (table *TestTbTestBeRef) GetDataList() []*TestTestBeRef {
    return table._dataList
}

func (table *TestTbTestBeRef) Get(key int32) *TestTestBeRef {
    return table._dataMap[key]
}

