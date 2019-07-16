import 'package:bmi_project/utilities/constantes.dart';
import 'package:flutter/material.dart';

class CalculBmiPage extends StatefulWidget {
  @override
  _CalculBmiPageState createState() => _CalculBmiPageState();
}

class _CalculBmiPageState extends State<CalculBmiPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiDesign(),
    );
  }
}

class BmiDesign extends StatefulWidget {
  @override
  _BmiDesignState createState() => _BmiDesignState();
}

class _BmiDesignState extends State<BmiDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // TODO
              print('Bonjour le monde');
            }),
        title: Text(
          "Calculatrice d'IMC",
          style: TextStyle(
            fontFamily: 'OpenSans-SemiBold',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Text('Calcul IMC'),
          ),
        ),
      ),
    );
  }
}
