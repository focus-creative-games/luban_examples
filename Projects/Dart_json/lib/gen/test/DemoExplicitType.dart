
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:collection';
import '/gen/Tables.dart';



 class DemoExplicitType 
{
    DemoExplicitType(
    {
    required this.x1,
    required this.x2,
    required this.x3,
    required this.x4,
    required this.x5,
    required this.x6,
    required this.x7,
    }
    );

    factory DemoExplicitType.deserialize(dynamic _buf){
        final x1;
        x1 = _buf['x1'] as int;
        final x2;
        x2 = _buf['x2'] as int;
        final x3;
        x3 = _buf['x3'] as int;
        final x4;
        x4 = _buf['x4'] as int;
        final x5;
        x5 = _buf['x5'].toDouble();
        final x6;
        x6 = _buf['x6'].toDouble();
        final x7;
        x7 = _buf['x7'] as int;
        return DemoExplicitType(
            x1:x1,
            x2:x2,
            x3:x3,
            x4:x4,
            x5:x5,
            x6:x6,
            x7:x7,
       );
    }

    final int x1;
    final int x2;
    final int x3;
    final int x4;
    final double x5;
    final double x6;
    final int x7;
    static final int __ID__ = 370351885;
     
    void resolveRef(Tables tables)
    {

    }

    @override
    String toString() {
        return 'DemoExplicitType(x1:$x1, x2:$x2, x3:$x3, x4:$x4, x5:$x5, x6:$x6, x7:$x7, )';
    }
}

