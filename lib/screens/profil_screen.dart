import 'package:bmi_project/utilities/constantes.dart';
import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilMenu(),
    );
  }
}

class ProfilMenu extends StatefulWidget {
  @override
  _ProfilMenuState createState() => _ProfilMenuState();
}

class _ProfilMenuState extends State<ProfilMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // TODO
          },
        ),
        title: Text(
          "Modifier votre profil",
          style: TextStyle(
            fontFamily: 'OpenSans-SemiBold',
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Text('Votre profil'),
        ),
      ),
    );
  }
}
