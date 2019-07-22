import 'package:bmi_project/screens/history_screen.dart';
import 'package:bmi_project/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:bmi_project/utilities/constantes.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CalculBmiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiDesign(),
    );
  }
}

double sliderDefaultValue = 21.0;

class BmiDesign extends StatefulWidget {
  @override
  _BmiDesignState createState() => _BmiDesignState();
}

class _BmiDesignState extends State<BmiDesign> {
  Widget historyScreen = HistoryPage();
  Widget bmiMenu = BmiDesign();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  GlobalKey _keyNav = kBottomNavigationKey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: kMainColor,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
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
        child: Container(
          color: kMainColor,
          child: ListView(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
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
                  style: kStyleTextDrawer,
                ),
                onTap: () {
                  Navigator.pop(context);
                  final CurvedNavigationBarState navBar = _keyNav.currentState;
                  navBar.setPage(2);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.refresh,
                  color: Colors.white70,
                ),
                title: Text(
                  'Historique IMC',
                  style: kStyleTextDrawer,
                ),
                onTap: () {
                  Navigator.pop(context);

                  bmiMenu = historyScreen;
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => bmiMenu),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.white70,
                ),
                title: Text(
                  'Paramètres',
                  style: kStyleTextDrawer,
                ),
                onTap: () {
                  Navigator.pop(context);
                  final CurvedNavigationBarState navBar = _keyNav.currentState;
                  navBar.setPage(0);
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Material(
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(10.0),
                              child: Container(
                                height: 120.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xFFDEDEDE),
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'GENRE',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: kTextColor,
                                        fontFamily: 'OpenSans-SemiBold',
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color(0xFFDEDEDE),
                                                  width: 1.0,
                                                ),
                                                shape: BoxShape.circle,
                                                color: Colors.transparent,
                                              ),
                                              height: 50.0,
                                              width: 50.0,
                                              child: Center(
                                                child: Image(
                                                  image: AssetImage(
                                                      'images/male.png'),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Text('Male'),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color(0xFFDEDEDE),
                                                  width: 1.0,
                                                ),
                                                shape: BoxShape.circle,
                                                color: Colors.transparent,
                                              ),
                                              child: Center(
                                                child: Image(
                                                  image: AssetImage(
                                                      'images/female.png'),
                                                ),
                                              ),
                                              height: 50.0,
                                              width: 60.0,
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Text('Femelle'),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Material(
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(10.0),
                              child: Container(
                                height: 120.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xFFDEDEDE),
                                      width: 1.0,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'AGE',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: kTextColor,
                                        fontFamily: 'OpenSans-SemiBold',
                                      ),
                                    ),
                                    Column(
                                      children: <Widget>[
                                        SliderTheme(
                                          data:
                                              SliderTheme.of(context).copyWith(
                                            trackHeight: 4.0,
                                            thumbColor: kMainColor,
                                            activeTrackColor:
                                                kSlideInactiveColor,
                                            inactiveTrackColor:
                                                kSlideActiveColor,
                                            thumbShape: RoundSliderThumbShape(
                                                enabledThumbRadius: 10.0),
                                            overlayShape:
                                                RoundSliderOverlayShape(
                                                    overlayRadius: 15.0),
                                            overlayColor: Color(0x29606BA1),
                                          ),
                                          child: Slider(
                                            min: 0.0,
                                            max: 120.0,
                                            onChanged: (newValue) {
                                              setState(() {
                                                sliderDefaultValue = newValue;
                                              });
                                            },
                                            value: sliderDefaultValue,
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xFFDEDEDE),
                                              width: 1.0,
                                            ),
                                            shape: BoxShape.circle,
                                            color: Color(0x20606BA1),
                                          ),
                                          height: 50.0,
                                          width: 50.0,
                                          child: Center(
                                            child: Text(
                                              '${sliderDefaultValue.toInt()}',
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Column(),
              ],
            )),
      ),
    );
  }
}
