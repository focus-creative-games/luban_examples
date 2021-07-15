
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------


package cfg

import "bright/serialization"

type ByteBufLoader func(string) (*serialization.ByteBuf, error)

type Tables struct {
    TbBlackboard *Ai_TbBlackboard
    TbBehaviorTree *Ai_TbBehaviorTree
    TbClazz *Blueprint_TbClazz
    TbDrop *Bonus_TbDrop
    TbGlobalConfig *Common_TbGlobalConfig
    TbDummy *Common_TbDummy
    TbErrorInfo *Error_TbErrorInfo
    TbCodeInfo *Error_TbCodeInfo
    TbItem *Item_TbItem
    TbItemFunc *Item_TbItemFunc
    TbItemExtra *Item_TbItemExtra
    TbL10NDemo *L10n_TbL10NDemo
    TbPatchDemo *L10n_TbPatchDemo
    TbSystemMail *Mail_TbSystemMail
    TbGlobalMail *Mail_TbGlobalMail
    TbRoleLevelExpAttr *Role_TbRoleLevelExpAttr
    TbRoleLevelBonusCoefficient *Role_TbRoleLevelBonusCoefficient
    TbTestTag *Tag_TbTestTag
    TbFullTypes *Test_TbFullTypes
    TbSingleton *Test_TbSingleton
    TbDataFromJson *Test_TbDataFromJson
    TbDataFromXml *Test_TbDataFromXml
    TbDataFromLua *Test_TbDataFromLua
    TbMultiRowRecord *Test_TbMultiRowRecord
    TbMultiRowTitle *Test_TbMultiRowTitle
    TbTestNull *Test_TbTestNull
    TbDemoPrimitive *Test_TbDemoPrimitive
    TbTestString *Test_TbTestString
    TbDemoGroup *Test_TbDemoGroup
    TbDemoGroup_C *Test_TbDemoGroup_C
    TbDemoGroup_S *Test_TbDemoGroup_S
    TbDemoGroup_E *Test_TbDemoGroup_E
    TbTestGlobal *Test_TbTestGlobal
}

func NewTables(loader ByteBufLoader) (*Tables, error) {
    var err error
    var buf *serialization.ByteBuf

    tables := &Tables{}
    if buf, err = loader("ai.TbBlackboard") ; err != nil {
        return nil, err
    }
    if tables.TbBlackboard, err = NewAi_TbBlackboard(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("ai.TbBehaviorTree") ; err != nil {
        return nil, err
    }
    if tables.TbBehaviorTree, err = NewAi_TbBehaviorTree(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("blueprint.TbClazz") ; err != nil {
        return nil, err
    }
    if tables.TbClazz, err = NewBlueprint_TbClazz(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("bonus.TbDrop") ; err != nil {
        return nil, err
    }
    if tables.TbDrop, err = NewBonus_TbDrop(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("common.TbGlobalConfig") ; err != nil {
        return nil, err
    }
    if tables.TbGlobalConfig, err = NewCommon_TbGlobalConfig(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("common.TbDummy") ; err != nil {
        return nil, err
    }
    if tables.TbDummy, err = NewCommon_TbDummy(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("error.TbErrorInfo") ; err != nil {
        return nil, err
    }
    if tables.TbErrorInfo, err = NewError_TbErrorInfo(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("error.TbCodeInfo") ; err != nil {
        return nil, err
    }
    if tables.TbCodeInfo, err = NewError_TbCodeInfo(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("item.TbItem") ; err != nil {
        return nil, err
    }
    if tables.TbItem, err = NewItem_TbItem(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("item.TbItemFunc") ; err != nil {
        return nil, err
    }
    if tables.TbItemFunc, err = NewItem_TbItemFunc(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("item.TbItemExtra") ; err != nil {
        return nil, err
    }
    if tables.TbItemExtra, err = NewItem_TbItemExtra(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("l10n.TbL10NDemo") ; err != nil {
        return nil, err
    }
    if tables.TbL10NDemo, err = NewL10n_TbL10NDemo(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("l10n.TbPatchDemo") ; err != nil {
        return nil, err
    }
    if tables.TbPatchDemo, err = NewL10n_TbPatchDemo(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("mail.TbSystemMail") ; err != nil {
        return nil, err
    }
    if tables.TbSystemMail, err = NewMail_TbSystemMail(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("mail.TbGlobalMail") ; err != nil {
        return nil, err
    }
    if tables.TbGlobalMail, err = NewMail_TbGlobalMail(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("role.TbRoleLevelExpAttr") ; err != nil {
        return nil, err
    }
    if tables.TbRoleLevelExpAttr, err = NewRole_TbRoleLevelExpAttr(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("role.TbRoleLevelBonusCoefficient") ; err != nil {
        return nil, err
    }
    if tables.TbRoleLevelBonusCoefficient, err = NewRole_TbRoleLevelBonusCoefficient(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("tag.TbTestTag") ; err != nil {
        return nil, err
    }
    if tables.TbTestTag, err = NewTag_TbTestTag(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("test.TbFullTypes") ; err != nil {
        return nil, err
    }
    if tables.TbFullTypes, err = NewTest_TbFullTypes(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("test.TbSingleton") ; err != nil {
        return nil, err
    }
    if tables.TbSingleton, err = NewTest_TbSingleton(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("test.TbDataFromJson") ; err != nil {
        return nil, err
    }
    if tables.TbDataFromJson, err = NewTest_TbDataFromJson(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("test.TbDataFromXml") ; err != nil {
        return nil, err
    }
    if tables.TbDataFromXml, err = NewTest_TbDataFromXml(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("test.TbDataFromLua") ; err != nil {
        return nil, err
    }
    if tables.TbDataFromLua, err = NewTest_TbDataFromLua(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("test.TbMultiRowRecord") ; err != nil {
        return nil, err
    }
    if tables.TbMultiRowRecord, err = NewTest_TbMultiRowRecord(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("test.TbMultiRowTitle") ; err != nil {
        return nil, err
    }
    if tables.TbMultiRowTitle, err = NewTest_TbMultiRowTitle(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("test.TbTestNull") ; err != nil {
        return nil, err
    }
    if tables.TbTestNull, err = NewTest_TbTestNull(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("test.TbDemoPrimitive") ; err != nil {
        return nil, err
    }
    if tables.TbDemoPrimitive, err = NewTest_TbDemoPrimitive(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("test.TbTestString") ; err != nil {
        return nil, err
    }
    if tables.TbTestString, err = NewTest_TbTestString(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("test.TbDemoGroup") ; err != nil {
        return nil, err
    }
    if tables.TbDemoGroup, err = NewTest_TbDemoGroup(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("test.TbDemoGroup_C") ; err != nil {
        return nil, err
    }
    if tables.TbDemoGroup_C, err = NewTest_TbDemoGroup_C(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("test.TbDemoGroup_S") ; err != nil {
        return nil, err
    }
    if tables.TbDemoGroup_S, err = NewTest_TbDemoGroup_S(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("test.TbDemoGroup_E") ; err != nil {
        return nil, err
    }
    if tables.TbDemoGroup_E, err = NewTest_TbDemoGroup_E(buf) ; err != nil {
        return nil, err
    }
    if buf, err = loader("test.TbTestGlobal") ; err != nil {
        return nil, err
    }
    if tables.TbTestGlobal, err = NewTest_TbTestGlobal(buf) ; err != nil {
        return nil, err
    }
    return tables, nil
}

