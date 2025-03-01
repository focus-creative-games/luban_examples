
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

enum EMinorType
{
    None(0),


    //钻石
    DIAMOND(101)  ,

    //金币
    GOLD(102)  ,

    //银币
    SILVER(103)  ,

    //经验
    EXP(104)  ,

    //能量点
    POWER_POINT(105)  ,

    //发型
    HAIR_STYLE(210)  ,

    //外套
    COAT(220)  ,

    //上衣
    UPPER_JACKET(230)  ,

    //裤子
    TROUSERS(241)  ,

    //裙子
    SKIRT(242)  ,

    //袜子
    SOCKS(250)  ,

    //鞋子
    SHOES(260)  ,

    //发饰
    HAIR_ACCESSORY(271)  ,

    //帽子
    HAT(272)  ,

    //耳饰
    EARRING(273)  ,

    //颈饰
    NECKLACE(274)  ,

    //腕饰
    BRACELET(275)  ,

    //发箍
    HAIR_CLASP(276)  ,

    //手套
    GLOVE(277)  ,

    //手持物
    HANDHELD_OBJECT(278)  ,

    //特殊
    SPECIAL(279)  ,

    //底妆
    BASE_COSMETIC(281)  ,

    //眉妆
    EYEBROW_COSMETIC(282)  ,

    //睫毛
    EYELASH(283)  ,

    //美瞳
    COSMETIC_CONTACT_LENSES(284)  ,

    //唇妆
    LIP_COSMETIC(285)  ,

    //肤色
    SKIN_COLOR(286)  ,

    //连衣裙
    ONE_PIECE_DRESS(290)  ,

    //换装场景
    SWITCH_CLOTHES_SCENE(291)  ,

    //任务道具
    QUEST(301)  ,

    //投掷物
    CAST(401)  ,

    //刀剑
    SWORD(421)  ,

    //弓箭
    BOW_ARROW(422)  ,

    //法杖
    WANDS(423)  ,

    //特殊工具
    SPECIAL_TOOL(424)  ,

    //食物
    FOOD(403)  ,

    //宝箱
    TREASURE_BOX(501)  ,

    //钥匙
    KEY(502)  ,

    //多选一宝箱
    MULTI_CHOOSE_TREASURE_BOX(503)  ,

    //成就相关
    ACHIEVEMENT(601)  ,

    //称谓相关
    TITLE(602)  ,

    //头像框
    AVATAR_FRAME(701)  ,

    //语音
    VOICE(801)  ,

    //特殊待机动作
    IDLE_POSE(901)  ,

    //拍照动作
    PHOTO_POSE(902)  ,

    //背包
    BAG(1001)  ,

    //好友数量
    FRIEND_CAPACITY(1002)  ,

    //制作材料
    CONSTRUCTION_MATERIAL(1101)  ,

    //设计图纸
    DESIGN_DRAWING(1102)  ;

    final int value;

    const EMinorType(this.value);

    static EMinorType fromValue(int value)
    {
       return EMinorType.values.firstWhere((element) => element.value == value, orElse: () => fromValue(0));
    }
}

