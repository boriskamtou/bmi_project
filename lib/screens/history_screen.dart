import 'package:bmi_project/screens/calcul_bmi_screen.dart';
import 'package:bmi_project/screens/home_screen.dart';
import 'package:bmi_project/utilities/constantes.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HistoryScreen(),
    );
  }
}

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  GlobalKey _keyNav = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Historique',
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Widget historyScreen = HistoryPage();
            Widget bmiMenu = BmiDesign();
            historyScreen = bmiMenu;
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => historyScreen),
            );
          },
        ),
        backgroundColor: kMainColor,
      ),
      body: Container(
        child: Center(
          child: Text('Historique'),
        ),
      ),
    );
  }
}
