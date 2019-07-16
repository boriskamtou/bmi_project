import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  color: Color(0xFF606BA1),
                  fontFamily: 'OpenSans-Regular',
                ),
              ),
              Text(
                "Vérifions votre poid.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'OpenSans-Regular',
                  letterSpacing: 3.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
