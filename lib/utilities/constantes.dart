import 'package:bmi_project/screens/calcul_bmi_screen.dart';
import 'package:bmi_project/screens/history_screen.dart';
import 'package:bmi_project/screens/profil_screen.dart';
import 'package:bmi_project/screens/settings_screen.dart';
import 'package:flutter/material.dart';

const kMainColor = Color(0xFF606BA1);
const kTextColor = Color(0xFF515151);
const kIconColor = Color(0xA09F9F9F);
const kSlideInactiveColor = Color(0xFFcbcfe0);
const kSlideActiveColor = Color(0xFFcbcfe0);

GlobalKey kBottomNavigationKey = GlobalKey();
Widget kShowPage = CalculBmiPage();

const kFontFamilySemiBold = TextStyle(
  fontFamily: 'OpenSans-SemiBold',
);

const kStyleTextDrawer = TextStyle(
  color: Colors.white,
  fontSize: 16.0,
);
