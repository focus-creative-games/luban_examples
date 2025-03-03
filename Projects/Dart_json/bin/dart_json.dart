import 'package:my_project/gen/Tables.dart' as tables;
import 'dart:io';
import 'dart:convert';

void main(List<String> arguments) {
  tables.Tables t = tables.Tables(loadData);

  t.waitLoad().then((value) {
    print('Tables loaded');

    print(t.tbItem?.getOrDefault(1));
  });
}

Future<dynamic> loadData(fileName) async {
  var file = File('json/$fileName.json');

  if (await file.exists()) {
    var data = await file.readAsString();
    var json = jsonDecode(data);
    return json;
  } else {
    print('File not found: $fileName');
  }
}
