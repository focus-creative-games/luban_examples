
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

import "bright/serialization"

type L10n_TbL10NDemo struct {
    _dataMap map[int32]*L10n_L10NDemo
    _dataList []*L10n_L10NDemo
}

func NewL10n_TbL10NDemo(_buf *serialization.ByteBuf) (*L10n_TbL10NDemo, error) {
	if size, err := _buf.ReadSize() ; err != nil {
		return nil, err
	} else {
		_dataList := make([]*L10n_L10NDemo, 0, size)
		dataMap := make(map[int32]*L10n_L10NDemo)

		for i := 0 ; i < size ; i++ {
			if _v, err2 := NewL10n_L10NDemo(_buf); err2 != nil {
				return nil, err2
			} else {
				_dataList = append(_dataList, _v)
				dataMap[_v.Id] = _v
			}
		}
		return &L10n_TbL10NDemo{_dataList:_dataList, _dataMap:dataMap}, nil
	}
}

func (table *L10n_TbL10NDemo) GetDataMap() map[int32]*L10n_L10NDemo {
    return table._dataMap
}

func (table *L10n_TbL10NDemo) GetDataList() []*L10n_L10NDemo {
    return table._dataList
}

func (table *L10n_TbL10NDemo) Get(key int32) *L10n_L10NDemo {
    return table._dataMap[key]
}


