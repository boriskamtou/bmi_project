import 'package:bmi_project/screens/home_screen.dart';
import 'package:bmi_project/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        "HomeScreen": (context) => HomePage(),
      },
      theme: ThemeData(
        primaryColor: Color(0xFF606BA1),
      ),
    ));
