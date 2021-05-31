import 'package:carousel_slider/carousel_slider.dart';
import 'package:fiap_nac02/themes/colors.dart';
import 'package:flutter/material.dart';

class ClassDetails extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    List students = [
      {
        "id": 1,
        "name": "Manuel da Silva",
        "image": 'https://img.ibxk.com.br/2019/02/17/17124052466014.jpg?w=328',
        "isPresent": false,
      },
      {
        "id": 2,
        "name": "Gustavo Gotha",
        "image": 'https://img.ibxk.com.br/2019/02/17/17124052466014.jpg?w=328',
        "isPresent": true,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('3SIS'),
        backgroundColor: FiapRedColor,
        centerTitle: true,
      ),
      backgroundColor: FiapBlackColor,
      body: Center(
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
              items: students.map((student) {
                print('student ${student['name']}');
                return Builder(
                  builder: (BuildContext context) {
                    return Column(
                      children: [
                        Container(
                          child: Text(
                            student['name'],
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
                            student['image'],
                          ),
                        ),
                      ],
                    );
                  },
                );
              }).toList(),
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
                  onPressed: () => buttonCarouselController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear),
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
      ),
    );
  }
}
