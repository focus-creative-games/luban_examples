
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

enum EClothesPropertyType
{
    //简约
    JIAN_YUE(1)  ,

    //华丽
    HUA_LI(2)  ,

    //可爱
    KE_AI(3)  ,

    //成熟
    CHENG_SHU(4)  ,

    //活泼
    HUO_PO(5)  ,

    //优雅
    YOU_YA(6)  ,

    //清纯
    QING_CHUN(7)  ,

    //性感
    XING_GAN(8)  ,

    //清凉
    QING_LIANG(9)  ,

    //保暖
    BAO_NUAN(10)  ;

    final int value;

    const EClothesPropertyType(this.value);

    static EClothesPropertyType fromValue(int value)
    {
       return EClothesPropertyType.values.firstWhere((element) => element.value == value);
    }
}

