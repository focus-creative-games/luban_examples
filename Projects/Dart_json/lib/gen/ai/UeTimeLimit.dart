
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

import '/gen/ai/EFlowAbortMode.dart';

import '/gen/ai/Decorator.dart';

 class UeTimeLimit extends Decorator
{
    UeTimeLimit(
    {
    required super.id, 
    required super.node_name, 
    required super.flow_abort_mode, 
    required this.limit_time,
    }
    );

    factory UeTimeLimit.deserialize(dynamic _buf){
        final id;
        id = _buf['id'] as int;
        final node_name;
        node_name = _buf['node_name'] as String;
        final flow_abort_mode;
        flow_abort_mode = EFlowAbortMode.fromValue(_buf['flow_abort_mode']);
        final limit_time;
        limit_time = _buf['limit_time'].toDouble();
        return UeTimeLimit(
            id:id,
            node_name:node_name,
            flow_abort_mode:flow_abort_mode,
            limit_time:limit_time,
       );
    }

    final double limit_time;
    static final int __ID__ = 338469720;
     @override
    void resolveRef(Tables tables)
    {
        super.resolveRef(tables);

    }

    @override
    String toString() {
        return 'UeTimeLimit(id:$id, node_name:$node_name, flow_abort_mode:$flow_abort_mode, limit_time:$limit_time, )';
    }
}

