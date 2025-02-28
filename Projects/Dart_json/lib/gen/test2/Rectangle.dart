
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


import '/gen/test/Shape.dart';


//矩形
 class Rectangle extends Shape
{
    Rectangle({
    required this.width,
    required this.height,
    });

     factory Rectangle.deserialize(dynamic _buf){
        
        final width;
        width = _buf['width'].toDouble();
        final height;
        height = _buf['height'].toDouble();
        return Rectangle(
            width:width,
            height:height,
        );
    }
    //宽度
    final double width;
    //高度
    final double height;

    static final int __ID__ = 694982337;
     @override
     void resolveRef(Tables tables)
     {
        super.resolveRef(tables);

     }

     @override
     String toString() {
        return 'Rectangle(width:$width, height:$height, )';
    }
}

