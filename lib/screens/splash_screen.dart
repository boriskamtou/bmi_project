import 'package:bmi_project/utilities/constantes.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'home_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<Timer> goToHomeScreen() async {
    return Timer(Duration(seconds: 3), goToHome);
  }

  goToHome() async {
    Navigator.pushReplacement(
      context,
      PageTransition(
        duration: Duration(milliseconds: 800),
        type: PageTransitionType.rightToLeft,
        child: HomePage(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    goToHomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/bg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xC0606BA1), Color(0xD0ADAADF)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "<- IMC ->",
                  style: TextStyle(
                    fontSize: 28.0,
                    color: Colors.white,
                    fontFamily: 'OpenSans-Regular',
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "CALCULATRICE D'IMC",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: kMainColor,
                    fontFamily: 'OpenSans-SemiBold',
                  ),
                ),
                Text(
                  "Vérifions votre poid.",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    fontFamily: 'OpenSans-Light',
                    letterSpacing: 3.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
