import 'package:fiap_nac02/themes/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          // color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        counterText: "",
                        labelText: "RM".toUpperCase(),
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: FiapRedColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: FiapRedColor),
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        counterText: "",
                        labelText: "Senha".toUpperCase(),
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: FiapRedColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: FiapRedColor),
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 150,
                height: 40,
                child: RaisedButton(
                  color: FiapRedColor,
                  child: Text(
                    'Conectar'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      "/home",
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
