import 'package:fiap_nac02/components/touchable_opacity.dart';
import 'package:fiap_nac02/themes/colors.dart';
import 'package:flutter/material.dart';

class CardTileClass extends StatelessWidget {
  final String nameClass;
  final int countClass;
  var classes;

  CardTileClass({Key key, this.nameClass, this.countClass, this.classes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      onTap: () {
        Navigator.pushNamed(context, "/class-details");
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: FiapRedColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text(
                nameClass,
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "$countClass alunos",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
