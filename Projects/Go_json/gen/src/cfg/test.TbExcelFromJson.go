
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

type Test_TbExcelFromJson struct {
    _dataMap map[int32]*Test_ExcelFromJson
    _dataList []*Test_ExcelFromJson
}

func NewTest_TbExcelFromJson(_buf []map[string]interface{}) (*Test_TbExcelFromJson, error) {
	_dataList := make([]*Test_ExcelFromJson, 0, len(_buf))
	dataMap := make(map[int32]*Test_ExcelFromJson)
	for _, _ele_ := range _buf {
		if _v, err2 := NewTest_ExcelFromJson(_ele_); err2 != nil {
			return nil, err2
		} else {
			_dataList = append(_dataList, _v)
			dataMap[_v.X4] = _v
		}
	}
	return &Test_TbExcelFromJson{_dataList:_dataList, _dataMap:dataMap}, nil
}

func (table *Test_TbExcelFromJson) GetDataMap() map[int32]*Test_ExcelFromJson {
    return table._dataMap
}

func (table *Test_TbExcelFromJson) GetDataList() []*Test_ExcelFromJson {
    return table._dataList
}

func (table *Test_TbExcelFromJson) Get(key int32) *Test_ExcelFromJson {
    return table._dataMap[key]
}


