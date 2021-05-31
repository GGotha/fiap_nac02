import 'package:fiap_nac02/screens/class_details.dart';
import 'package:fiap_nac02/screens/home.dart';
import 'package:fiap_nac02/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fiap Chamada',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginScreen(),
        "/home": (context) => HomeScreen(),
        "/class-details": (context) => ClassDetails(),
      },
    );
  }
}
