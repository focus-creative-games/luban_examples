
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg

import "bright/serialization"

type ItemTbItemFunc struct {
    _dataMap map[int32]*ItemItemFunction
    _dataList []*ItemItemFunction
}

func NewItemTbItemFunc(_buf *serialization.ByteBuf) (*ItemTbItemFunc, error) {
	if size, err := _buf.ReadSize() ; err != nil {
		return nil, err
	} else {
		_dataList := make([]*ItemItemFunction, 0, size)
		dataMap := make(map[int32]*ItemItemFunction)

		for i := 0 ; i < size ; i++ {
			if _v, err2 := DeserializeItemItemFunction(_buf); err2 != nil {
				return nil, err2
			} else {
				_dataList = append(_dataList, _v)
				dataMap[_v.MinorType] = _v
			}
		}
		return &ItemTbItemFunc{_dataList:_dataList, _dataMap:dataMap}, nil
	}
}

func (table *ItemTbItemFunc) GetDataMap() map[int32]*ItemItemFunction {
    return table._dataMap
}

func (table *ItemTbItemFunc) GetDataList() []*ItemItemFunction {
    return table._dataList
}

func (table *ItemTbItemFunc) Get(key int32) *ItemItemFunction {
    return table._dataMap[key]
}

