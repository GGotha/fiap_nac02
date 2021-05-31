import 'package:fiap_nac02/models/student_model.dart';

import 'database.dart';

class StudentRepository {
  Future findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<StudentModel> students = new List<StudentModel>();

    if (db.created) {
      students = new List<StudentModel>();
      students.add(
        new StudentModel(
          id: 1,
          name: "Gustavo Gotha",
          image: 'https://img.ibxk.com.br/2019/02/17/17124052466014.jpg?w=328',
          isPresent: false,
        ),
      );
      students.add(
        new StudentModel(
          id: 2,
          name: "Lucas da Silva",
          image: 'https://img.ibxk.com.br/2019/02/17/17124052466014.jpg?w=328',
          isPresent: false,
        ),
      );
      students.add(
        new StudentModel(
          id: 3,
          name: "Enzo Hermano",
          image: 'https://img.ibxk.com.br/2019/02/17/17124052466014.jpg?w=328',
          isPresent: false,
        ),
      );
      students.add(
        new StudentModel(
          id: 4,
          name: "Akim Goma",
          image: 'https://img.ibxk.com.br/2019/02/17/17124052466014.jpg?w=328',
          isPresent: false,
        ),
      );
    }

    return new Future.value(students);
  }
}
