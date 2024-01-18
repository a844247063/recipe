import 'package:recipe/database/dbhelper.dart';

class Record {
  int? id;
  String? name;
  int? weight;

  Record(this.id, this.name, this.weight);

  Record.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    weight = map['weight'];
  }

  Map<String, dynamic> toMap() {
    return {
      DatabaseHelper.columnId: id,
      DatabaseHelper.columnName: name,
      DatabaseHelper.columnweight: weight,
    };
  }
}
