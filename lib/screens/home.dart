import 'package:fiap_nac02/components/card_tile_class.dart';
import 'package:fiap_nac02/components/touchable_opacity.dart';
import 'package:fiap_nac02/themes/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FiapBlackColor,
      appBar: AppBar(
        leading: Container(),
        title: Text('Turmas'),
        backgroundColor: FiapRedColor,
        centerTitle: true,
      ),
      body: Column(
        children: [
          CardTileClass(),
          CardTileClass(),
          CardTileClass(),
        ],
      ),
    );
  }
}
