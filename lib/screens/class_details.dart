import 'package:carousel_slider/carousel_slider.dart';
import 'package:fiap_nac02/components/future_builder_students.dart';
import 'package:fiap_nac02/models/student_model.dart';
import 'package:fiap_nac02/themes/colors.dart';
import 'package:flutter/material.dart';

class ClassDetails extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    List<StudentModel> students = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('3SIS'),
        backgroundColor: FiapRedColor,
        centerTitle: true,
      ),
      backgroundColor: FiapBlackColor,
      body: FutureBuilderStudents(),
    );
  }
}
