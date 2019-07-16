import 'package:bmi_project/screens/home_screen.dart';
import 'package:bmi_project/screens/profil_screen.dart';
import 'package:bmi_project/screens/settings_screen.dart';
import 'package:bmi_project/screens/splash_screen.dart';
import 'package:bmi_project/utilities/constantes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/homeScreen': (context) => HomePage(),
        '/profilScreen': (context) => ProfilPage(),
        '/settingScreen': (context) => SettingPage(),
      },
      theme: ThemeData(
        primaryColor: Color(0xFF606BA1),
        canvasColor: Color(0xFF606BA1),
      ),
    ));
