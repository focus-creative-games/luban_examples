
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
package cfg

type Ai_TbBehaviorTree struct {
    _dataMap map[int32]*Ai_BehaviorTree
    _dataList []*Ai_BehaviorTree
}

func NewAi_TbBehaviorTree(_buf []map[string]interface{}) (*Ai_TbBehaviorTree, error) {
	_dataList := make([]*Ai_BehaviorTree, 0, len(_buf))
	dataMap := make(map[int32]*Ai_BehaviorTree)
	for _, _ele_ := range _buf {
		if _v, err2 := NewAi_BehaviorTree(_ele_); err2 != nil {
			return nil, err2
		} else {
			_dataList = append(_dataList, _v)
			dataMap[_v.Id] = _v
		}
	}
	return &Ai_TbBehaviorTree{_dataList:_dataList, _dataMap:dataMap}, nil
}

func (table *Ai_TbBehaviorTree) GetDataMap() map[int32]*Ai_BehaviorTree {
    return table._dataMap
}

func (table *Ai_TbBehaviorTree) GetDataList() []*Ai_BehaviorTree {
    return table._dataList
}

func (table *Ai_TbBehaviorTree) Get(key int32) *Ai_BehaviorTree {
    return table._dataMap[key]
}


