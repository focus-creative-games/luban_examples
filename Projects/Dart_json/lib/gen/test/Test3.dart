
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



 class Test3 
{
    Test3(
    {
    required this.x,
    required this.y,
    }
    );

    factory Test3.deserialize(dynamic _buf){
        final x;
        x = _buf['x'] as int;
        final y;
        y = _buf['y'] as int;
        return Test3(
            x:x,
            y:y,
       );
    }

    final int x;
    final int y;
    static final int __ID__ = 638540133;
     
    void resolveRef(Tables tables)
    {

    }

    @override
    String toString() {
        return 'Test3(x:$x, y:$y, )';
    }
}

