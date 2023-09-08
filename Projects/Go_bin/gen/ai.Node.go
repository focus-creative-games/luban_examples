
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

package cfg;


import (
    "demo/luban"
)

import "errors"

type AiNode struct {
    Id int32
    NodeName string
}

const TypeId_AiNode = -1055479768

func (*AiNode) GetTypeId() int32 {
    return -1055479768
}

func NewAiNode(_buf *luban.ByteBuf) (interface{}, error) {
    var id int32
    var err error
    if id, err = _buf.ReadInt() ; err != nil {
        return nil, err
    }
    switch id {
        case 1812449155: _v, err := NewAiUeSetDefaultFocus(_buf); if err != nil { return nil, errors.New("ai.uesetdefaultfocus") } else { return _v, nil }
        case 990693812: _v, err := NewAiExecuteTimeStatistic(_buf); if err != nil { return nil, errors.New("ai.executetimestatistic") } else { return _v, nil }
        case 1601247918: _v, err := NewAiChooseTarget(_buf); if err != nil { return nil, errors.New("ai.choosetarget") } else { return _v, nil }
        case 1195270745: _v, err := NewAiKeepFaceTarget(_buf); if err != nil { return nil, errors.New("ai.keepfacetarget") } else { return _v, nil }
        case -999247644: _v, err := NewAiGetOwnerPlayer(_buf); if err != nil { return nil, errors.New("ai.getownerplayer") } else { return _v, nil }
        case -61887372: _v, err := NewAiUpdateDailyBehaviorProps(_buf); if err != nil { return nil, errors.New("ai.updatedailybehaviorprops") } else { return _v, nil }
        case -513308166: _v, err := NewAiUeLoop(_buf); if err != nil { return nil, errors.New("ai.ueloop") } else { return _v, nil }
        case -951439423: _v, err := NewAiUeCooldown(_buf); if err != nil { return nil, errors.New("ai.uecooldown") } else { return _v, nil }
        case 338469720: _v, err := NewAiUeTimeLimit(_buf); if err != nil { return nil, errors.New("ai.uetimelimit") } else { return _v, nil }
        case -315297507: _v, err := NewAiUeBlackboard(_buf); if err != nil { return nil, errors.New("ai.ueblackboard") } else { return _v, nil }
        case 195054574: _v, err := NewAiUeForceSuccess(_buf); if err != nil { return nil, errors.New("ai.ueforcesuccess") } else { return _v, nil }
        case 1255972344: _v, err := NewAiIsAtLocation(_buf); if err != nil { return nil, errors.New("ai.isatlocation") } else { return _v, nil }
        case -1207170283: _v, err := NewAiDistanceLessThan(_buf); if err != nil { return nil, errors.New("ai.distancelessthan") } else { return _v, nil }
        case -1789006105: _v, err := NewAiSequence(_buf); if err != nil { return nil, errors.New("ai.sequence") } else { return _v, nil }
        case -1946981627: _v, err := NewAiSelector(_buf); if err != nil { return nil, errors.New("ai.selector") } else { return _v, nil }
        case -1952582529: _v, err := NewAiSimpleParallel(_buf); if err != nil { return nil, errors.New("ai.simpleparallel") } else { return _v, nil }
        case -512994101: _v, err := NewAiUeWait(_buf); if err != nil { return nil, errors.New("ai.uewait") } else { return _v, nil }
        case 1215378271: _v, err := NewAiUeWaitBlackboardTime(_buf); if err != nil { return nil, errors.New("ai.uewaitblackboardtime") } else { return _v, nil }
        case 514987779: _v, err := NewAiMoveToTarget(_buf); if err != nil { return nil, errors.New("ai.movetotarget") } else { return _v, nil }
        case -918812268: _v, err := NewAiChooseSkill(_buf); if err != nil { return nil, errors.New("ai.chooseskill") } else { return _v, nil }
        case -2140042998: _v, err := NewAiMoveToRandomLocation(_buf); if err != nil { return nil, errors.New("ai.movetorandomlocation") } else { return _v, nil }
        case -969953113: _v, err := NewAiMoveToLocation(_buf); if err != nil { return nil, errors.New("ai.movetolocation") } else { return _v, nil }
        case 1357409728: _v, err := NewAiDebugPrint(_buf); if err != nil { return nil, errors.New("ai.debugprint") } else { return _v, nil }
        default: return nil, errors.New("unknown type id")
    }
}


