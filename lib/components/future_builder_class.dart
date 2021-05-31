import 'package:fiap_nac02/components/card_tile_class.dart';
import 'package:fiap_nac02/repository/class_repository.dart';
import 'package:fiap_nac02/repository/student_repository.dart';
import 'package:fiap_nac02/themes/colors.dart';
import 'package:flutter/material.dart';

class FutureBuilderClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      initialData: [],
      future: ClassRepository().findAllAsync(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: ListView.builder(
              itemCount: snapshot.data == null ? 0 : snapshot.data.length,
              itemBuilder: (BuildContext context, index) {
                final classes = snapshot.data[index];

                return Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: CardTileClass(
                    countClass: classes.countStudents,
                    nameClass: classes.name,
                    classes: snapshot.data,
                  ),
                );
              },
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
