
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



 class Path 
{
    Path(
    {
    required this.id,
    required this.res,
    }
    );

    factory Path.deserialize(dynamic _buf){
        final id;
        id = _buf['id'] as int;
        final res;
        res = _buf['res'] as String;
        return Path(
            id:id,
            res:res,
       );
    }

    final int id;
    final String res;
    static final int __ID__ = -1226450911;
     
    void resolveRef(Tables tables)
    {

    }

    @override
    String toString() {
        return 'Path(id:$id, res:$res, )';
    }
}

