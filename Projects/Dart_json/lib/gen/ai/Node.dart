
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



import '/gen/ai/UeSetDefaultFocus.dart';

import '/gen/ai/ExecuteTimeStatistic.dart';

import '/gen/ai/ChooseTarget.dart';

import '/gen/ai/KeepFaceTarget.dart';

import '/gen/ai/GetOwnerPlayer.dart';

import '/gen/ai/UpdateDailyBehaviorProps.dart';

import '/gen/ai/UeLoop.dart';

import '/gen/ai/UeCooldown.dart';

import '/gen/ai/UeTimeLimit.dart';

import '/gen/ai/UeBlackboard.dart';

import '/gen/ai/UeForceSuccess.dart';

import '/gen/ai/IsAtLocation.dart';

import '/gen/ai/DistanceLessThan.dart';

import '/gen/ai/Sequence.dart';

import '/gen/ai/Selector.dart';

import '/gen/ai/SimpleParallel.dart';

import '/gen/ai/UeWait.dart';

import '/gen/ai/UeWaitBlackboardTime.dart';

import '/gen/ai/MoveToTarget.dart';

import '/gen/ai/ChooseSkill.dart';

import '/gen/ai/MoveToRandomLocation.dart';

import '/gen/ai/MoveToLocation.dart';

import '/gen/ai/DebugPrint.dart';

abstract class Node 
{
    Node(
    {
    required this.id,
    required this.node_name,
    }
    );

    factory Node.deserialize(dynamic _buf){
      switch (_buf['\$type'])
      {
        case "UeSetDefaultFocus": return UeSetDefaultFocus.deserialize(_buf);
        case "ExecuteTimeStatistic": return ExecuteTimeStatistic.deserialize(_buf);
        case "ChooseTarget": return ChooseTarget.deserialize(_buf);
        case "KeepFaceTarget": return KeepFaceTarget.deserialize(_buf);
        case "GetOwnerPlayer": return GetOwnerPlayer.deserialize(_buf);
        case "UpdateDailyBehaviorProps": return UpdateDailyBehaviorProps.deserialize(_buf);
        case "UeLoop": return UeLoop.deserialize(_buf);
        case "UeCooldown": return UeCooldown.deserialize(_buf);
        case "UeTimeLimit": return UeTimeLimit.deserialize(_buf);
        case "UeBlackboard": return UeBlackboard.deserialize(_buf);
        case "UeForceSuccess": return UeForceSuccess.deserialize(_buf);
        case "IsAtLocation": return IsAtLocation.deserialize(_buf);
        case "DistanceLessThan": return DistanceLessThan.deserialize(_buf);
        case "Sequence": return Sequence.deserialize(_buf);
        case "Selector": return Selector.deserialize(_buf);
        case "SimpleParallel": return SimpleParallel.deserialize(_buf);
        case "UeWait": return UeWait.deserialize(_buf);
        case "UeWaitBlackboardTime": return UeWaitBlackboardTime.deserialize(_buf);
        case "MoveToTarget": return MoveToTarget.deserialize(_buf);
        case "ChooseSkill": return ChooseSkill.deserialize(_buf);
        case "MoveToRandomLocation": return MoveToRandomLocation.deserialize(_buf);
        case "MoveToLocation": return MoveToLocation.deserialize(_buf);
        case "DebugPrint": return DebugPrint.deserialize(_buf);
        default: throw Exception('unknown type:$_buf[\$type]');
      }
    }

    final int id;
    final String node_name;
     
    void resolveRef(Tables tables)
    {

    }

    @override
    String toString() {
        return 'Node(id:$id, node_name:$node_name, )';
    }
}

