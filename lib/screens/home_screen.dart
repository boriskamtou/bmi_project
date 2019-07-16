import 'package:bmi_project/utilities/constantes.dart';
import 'package:flutter/material.dart';

// My Imports
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiMenu(),
    );
  }
}

class BmiMenu extends StatefulWidget {
  @override
  _BmiMenuState createState() => _BmiMenuState();
}

class _BmiMenuState extends State<BmiMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('Bonjour le monde');
            }),
        title: Text(
          "Calculatrice d'IMC",
          style: TextStyle(
            fontFamily: 'OpenSans-SemiBold',
          ),
        ),
      ),
    );
  }
}
