import 'package:flutter/material.dart';
import 'package:bmi_project/utilities/constantes.dart';

class CalculBmiPage extends StatelessWidget {
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
      drawer: Drawer(
        elevation: 30.0,
        child: Container(
          color: kMainColor,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(16.0, 35.0, 16.0, 8.0),
                margin: EdgeInsets.only(bottom: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/photo_profil.jpg'),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                            style: BorderStyle.solid),
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                      width: MediaQuery.of(context).size.width,
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
              SizedBox(
                height: 16.0,
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
                  Navigator.pop(context);
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
                  Navigator.pop(context);
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
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[],
              )
            ],
          ),
        ),
      ),
    );
  }
}
