
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "bright/serialization"

type Error_TbErrorInfo struct {
    _dataMap map[string]*Error_ErrorInfo
    _dataList []*Error_ErrorInfo
}

func NewError_TbErrorInfo(_buf *serialization.ByteBuf) (*Error_TbErrorInfo, error) {
	if size, err := _buf.ReadSize() ; err != nil {
		return nil, err
	} else {
		_dataList := make([]*Error_ErrorInfo, 0, size)
		dataMap := make(map[string]*Error_ErrorInfo)

		for i := 0 ; i < size ; i++ {
			if _v, err2 := NewError_ErrorInfo(_buf); err2 != nil {
				return nil, err2
			} else {
				_dataList = append(_dataList, _v)
				dataMap[_v.Code] = _v
			}
		}
		return &Error_TbErrorInfo{_dataList:_dataList, _dataMap:dataMap}, nil
	}
}

func (table *Error_TbErrorInfo) GetDataMap() map[string]*Error_ErrorInfo {
    return table._dataMap
}

func (table *Error_TbErrorInfo) GetDataList() []*Error_ErrorInfo {
    return table._dataList
}

func (table *Error_TbErrorInfo) Get(key string) *Error_ErrorInfo {
    return table._dataMap[key]
}


