
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



 class SepBean1 
{
    SepBean1(
    {
    required this.a,
    required this.b,
    required this.c,
    }
    );

    factory SepBean1.deserialize(dynamic _buf){
        final a;
        a = _buf['a'] as int;
        final b;
        b = _buf['b'] as int;
        final c;
        c = _buf['c'] as String;
        return SepBean1(
            a:a,
            b:b,
            c:c,
       );
    }

    final int a;
    final int b;
    final String c;
    static final int __ID__ = -1534339393;
     
    void resolveRef(Tables tables)
    {

    }

    @override
    String toString() {
        return 'SepBean1(a:$a, b:$b, c:$c, )';
    }
}

