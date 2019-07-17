import 'package:bmi_project/screens/calcul_bmi_screen.dart';
import 'package:bmi_project/screens/profil_screen.dart';
import 'package:bmi_project/screens/settings_screen.dart';
import 'package:flutter/material.dart';

final ProfilPage profilScreen = ProfilPage();
final SettingPage settingScreen = SettingPage();
final CalculBmiPage calculBmiScreen = CalculBmiPage();

Widget _pageChooser(int page) {
  switch (page) {
    case 0:
      return settingScreen;
      break;
    case 1:
      return calculBmiScreen;
      break;
    case 2:
      return profilScreen;
      break;
    default:
      return calculBmiScreen;
  }
}
