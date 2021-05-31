import 'package:fiap_nac02/models/class_model.dart';
import 'package:fiap_nac02/models/student_model.dart';

import 'database.dart';

class ClassRepository {
  Future findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<ClassModel> students = new List<ClassModel>();

    if (db.created) {
      students = new List<ClassModel>();
      students.add(
        new ClassModel(id: 1, name: "3SIS", countStudents: 42),
      );
      students.add(
        new ClassModel(id: 2, name: "1SIT", countStudents: 42),
      );
      students.add(
        new ClassModel(id: 3, name: "2SIB", countStudents: 42),
      );
      students.add(
        new ClassModel(id: 4, name: "4SIA", countStudents: 42),
      );
    }

    return new Future.value(students);
  }
}
