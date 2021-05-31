import 'package:carousel_slider/carousel_slider.dart';
import 'package:fiap_nac02/models/student_model.dart';
import 'package:flutter/material.dart';

class SliderStudents extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  List<StudentModel> students;

  SliderStudents({Key key, this.students});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider(
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              height: 400.0,
              enlargeCenterPage: true,
              viewportFraction: 1,
              aspectRatio: 2.0,
            ),
            items: students.map(
              (student) {
                return Builder(
                  builder: (BuildContext context) {
                    return Column(
                      children: [
                        Container(
                          child: Text(
                            student.name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 42,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Container(
                          color: Colors.white,
                          height: 250,
                          width: 250,
                          child: Image.network(
                            student.image,
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {},
                color: Colors.red,
                child: Text(
                  'Ausente',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 50),
              RaisedButton(
                onPressed: () {
                  buttonCarouselController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear,
                  );
                },
                color: Colors.green,
                child: Text(
                  'Presente',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
