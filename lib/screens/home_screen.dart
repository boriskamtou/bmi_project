import 'package:bmi_project/utilities/constantes.dart';
import 'package:flutter/material.dart';

// My Imports
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

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
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: kMainColor,
        items: <Widget>[
          Icon(
            Icons.settings,
            size: 30,
            color: kMainColor,
          ),
          Icon(
            Icons.home,
            size: 30,
            color: kMainColor,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: kMainColor,
          ),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
