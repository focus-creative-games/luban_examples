
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

enum EKeyType
{
    None(0),


    BOOL(1)  ,

    INT(2)  ,

    FLOAT(3)  ,

    STRING(4)  ,

    VECTOR(5)  ,

    ROTATOR(6)  ,

    NAME(7)  ,

    CLASS1(8)  ,

    ENUM1(9)  ,

    OBJECT(10)  ;

    final int value;

    const EKeyType(this.value);

    static EKeyType fromValue(int value)
    {
       return EKeyType.values.firstWhere((element) => element.value == value, orElse: () => fromValue(0));
    }
}

