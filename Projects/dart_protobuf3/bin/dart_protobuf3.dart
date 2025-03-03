import 'package:dart_protobuf3/gen/Tables.dart' as tables;
import 'dart:io';

void main(List<String> arguments) {
  tables.Tables t = tables.Tables(loadData);

  t.waitLoad().then((value) {
    print('Tables loaded');

    print(t.tbBlackboard?.dataList[0].desc);
  });
}

Future<dynamic> loadData(fileName) async {
  var file = File('data/$fileName.bytes');

  if (await file.exists()) {
    var data = await file.readAsBytes();
    return data;
  } else {
    print('File not found: $fileName');
  }
}
