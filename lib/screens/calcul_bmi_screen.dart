import 'package:bmi_project/utilities/constantes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

Drawer myDrawer() {
  return Drawer(
    child: Container(
      color: kMainColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('images/photo_profil.jpg'),
                ),
                Text(
                  'Kamtou Boris',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            width: double.infinity,
            child: Divider(
              height: 16.0,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person_outline,
              color: Colors.white70,
            ),
            title: Text(
              'Mon Profil',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              // TODO :
            },
          ),
          ListTile(
            leading: Icon(
              Icons.refresh,
              color: Colors.white70,
            ),
            title: Text(
              'Historique IMC',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              // TODO :
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.white70,
            ),
            title: Text(
              'Paramètres',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              // TODO :
            },
          ),
        ],
      ),
    ),
  );
}

class BmiDesign extends StatefulWidget {
  @override
  _BmiDesignState createState() => _BmiDesignState();
}

class _BmiDesignState extends State<BmiDesign> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: kMainColor,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // TODO
            print('Bonjour le monde');
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        title: Text(
          "Calculatrice d'IMC",
          style: TextStyle(
            fontFamily: 'OpenSans-SemiBold',
          ),
        ),
      ),
      drawer: myDrawer(),
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
