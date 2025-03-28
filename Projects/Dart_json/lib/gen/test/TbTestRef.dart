
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

import 'dart:collection';
import '/gen/test/TestRef.dart';

import '/gen/Tables.dart';


final class TbTestRef {
    
    final List<TestRef> _dataList = [];
    final Map<int, TestRef> _dataMap = {};

    TbTestRef(List<dynamic> _array) {
        
        for (var _buf in _array) {

         TestRef item = TestRef.deserialize(_buf);

         _dataList.add(item);
         _dataMap[item.id] = item;
        }
     }

    TestRef? getOrDefault(int id) {
        if (_dataMap.containsKey(id)) {
            return _dataMap[id];
        }
        return null;
    }

    void resolveRef(Tables tables)
    {
      for(var _v in _dataList)
      {
         _v.resolveRef(tables);
      }
    }

}

