import 'package:fiap_nac02/components/slider_students.dart';
import 'package:fiap_nac02/repository/student_repository.dart';
import 'package:fiap_nac02/themes/colors.dart';
import 'package:flutter/material.dart';

class FutureBuilderStudents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      initialData: [],
      future: StudentRepository().findAllAsync(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: SliderStudents(
              students: snapshot.data,
            ),
          );
        } else {
          return Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 50),
              child: CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(FiapRedColor),
              ),
            ),
          );
        }
      },
    );
  }
}
