
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

type Item_TbItemFunc struct {
    _dataMap map[int32]*Item_ItemFunction
    _dataList []*Item_ItemFunction
}

func NewItem_TbItemFunc(_buf []map[string]interface{}) (*Item_TbItemFunc, error) {
	_dataList := make([]*Item_ItemFunction, 0, len(_buf))
	dataMap := make(map[int32]*Item_ItemFunction)
	for _, _ele_ := range _buf {
		if _v, err2 := NewItem_ItemFunction(_ele_); err2 != nil {
			return nil, err2
		} else {
			_dataList = append(_dataList, _v)
			dataMap[_v.MinorType] = _v
		}
	}
	return &Item_TbItemFunc{_dataList:_dataList, _dataMap:dataMap}, nil
}

func (table *Item_TbItemFunc) GetDataMap() map[int32]*Item_ItemFunction {
    return table._dataMap
}

func (table *Item_TbItemFunc) GetDataList() []*Item_ItemFunction {
    return table._dataList
}

func (table *Item_TbItemFunc) Get(key int32) *Item_ItemFunction {
    return table._dataMap[key]
}


