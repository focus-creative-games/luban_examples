
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



 class TimeOfDay 
{
    TimeOfDay(
    {
    required this.hour,
    required this.minute,
    required this.second,
    }
    );

    factory TimeOfDay.deserialize(dynamic _buf){
        final hour;
        hour = _buf['hour'] as int;
        final minute;
        minute = _buf['minute'] as int;
        final second;
        second = _buf['second'] as int;
        return TimeOfDay(
            hour:hour,
            minute:minute,
            second:second,
       );
    }

    final int hour;
    final int minute;
    final int second;
    static final int __ID__ = -1728347371;
     
    void resolveRef(Tables tables)
    {

    }

    @override
    String toString() {
        return 'TimeOfDay(hour:$hour, minute:$minute, second:$second, )';
    }
}

