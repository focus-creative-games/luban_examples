
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "bright/serialization"


type Error_TbCodeInfo struct {
    _dataMap map[int32]*Error_CodeInfo
    _dataList []*Error_CodeInfo
}

func NewError_TbCodeInfo(_buf *serialization.ByteBuf) (*Error_TbCodeInfo, error) {
	if size, err := _buf.ReadSize() ; err != nil {
		return nil, err
	} else {
		_dataList := make([]*Error_CodeInfo, 0, size)
		dataMap := make(map[int32]*Error_CodeInfo)

		for i := 0 ; i < size ; i++ {
			if _v, err2 := NewError_CodeInfo (_buf); err2 != nil {
				return nil, err2
			} else {
				_dataList = append(_dataList, _v)
				dataMap[_v.Code] = _v
			}
		}
		return &Error_TbCodeInfo{_dataList:_dataList, _dataMap:dataMap}, nil
	}
}

func (table *Error_TbCodeInfo) GetDataMap() map[int32]*Error_CodeInfo {
    return table._dataMap
}

func (table *Error_TbCodeInfo) GetDataList() []*Error_CodeInfo {
    return table._dataList
}

func (table *Error_TbCodeInfo) Get(key int32) *Error_CodeInfo {
    return table._dataMap[key]
}



