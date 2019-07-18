import 'package:bmi_project/screens/history_screen.dart';
import 'package:bmi_project/screens/profil_screen.dart';
import 'package:bmi_project/screens/settings_screen.dart';
import 'package:bmi_project/utilities/constantes.dart';
import 'package:bmi_project/widgets/iconButtonNavigation.dart';
import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'calcul_bmi_screen.dart';

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
  int pageIndex = 1;
  // Creating pages
  final ProfilPage profilScreen = ProfilPage();
  final SettingPage settingScreen = SettingPage();
  final CalculBmiPage calculBmiScreen = CalculBmiPage();
  final HistoryPage historyScreen = HistoryPage();
//  Handle page transition
  Widget _showPage = CalculBmiPage();
  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return settingScreen;
        break;
      case 1:
        return calculBmiScreen;
        break;
      case 2:
        return profilScreen;
        break;
      case 3:
        return historyScreen;
        break;
      default:
        return calculBmiScreen;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _showPage,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: pageIndex,
        key: kBottomNavigationKey,
        height: 70.0,
        backgroundColor: kMainColor,
        items: <Widget>[
          IconButtonNavigation(Icons.settings),
          IconButtonNavigation(Icons.home),
          IconButtonNavigation(Icons.person),
        ],
        onTap: (index) {
          setState(() {
            _showPage = _pageChooser(index);
          });
        },
      ),
    );
  }
}
