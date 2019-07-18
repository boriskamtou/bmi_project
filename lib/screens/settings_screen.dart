import 'package:bmi_project/utilities/constantes.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SettingMenu(),
    );
  }
}

class SettingMenu extends StatefulWidget {
  @override
  _SettingMenuState createState() => _SettingMenuState();
}

class _SettingMenuState extends State<SettingMenu> {
  GlobalKey keyNav = kBottomNavigationKey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // TODO
              final CurvedNavigationBarState navBar = keyNav.currentState;
              navBar.setPage(1);
            }),
        title: Text(
          "Paramètres",
          style: TextStyle(
            fontFamily: 'OpenSans-SemiBold',
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Text('Vos paramètres'),
        ),
      ),
    );
  }
}
