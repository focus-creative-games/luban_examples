
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

enum EMajorType
{
    //货币
    CURRENCY(1)  ,

    //服装
    CLOTH(2)  ,

    //任务
    QUEST(3)  ,

    //消耗品
    CONSUMABLES(4)  ,

    //宝箱
    TREASURE_BOX(5)  ,

    //成就和称谓
    ACHIEVEMENT_AND_TITLE(6)  ,

    //头像框
    HEAD_FRAME(7)  ,

    //语音
    VOICE(8)  ,

    //动作
    ACTION(9)  ,

    //扩容道具
    EXPANSION(10)  ,

    //制作材料
    MATERIAL(11)  ;

    final int value;

    const EMajorType(this.value);

    static EMajorType fromValue(int value)
    {
       return EMajorType.values.firstWhere((element) => element.value == value);
    }
}

