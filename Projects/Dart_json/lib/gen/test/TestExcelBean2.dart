
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




//这是个测试excel结构
 class TestExcelBean2 
{
    TestExcelBean2({
    required this.y1,
    required this.y2,
    required this.y3,
    });

     factory TestExcelBean2.deserialize(dynamic _buf){
        
        final y1;
        y1 = _buf['y1'] as int;
        final y2;
        y2 = _buf['y2'] as String;
        final y3;
        y3 = _buf['y3'].toDouble();
        return TestExcelBean2(
            y1:y1,
            y2:y2,
            y3:y3,
        );
    }
    //最高品质
    final int y1;
    //黑色的
    final String y2;
    //蓝色的
    final double y3;

    static final int __ID__ = -1738345159;
     
     void resolveRef(Tables tables)
     {

     }

     @override
     String toString() {
        return 'TestExcelBean2(y1:$y1, y2:$y2, y3:$y3, )';
    }
}

