
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

//道具品质
enum EItemQuality
{
    //白
    WHITE(0)  ,

    //绿
    GREEN(1)  ,

    //蓝
    BLUE(2)  ,

    //紫
    PURPLE(3)  ,

    //金
    GOLDEN(4)  ;

    final int value;

    const EItemQuality(this.value);

    static EItemQuality fromValue(int value)
    {
       return EItemQuality.values.firstWhere((element) => element.value == value);
    }
}

