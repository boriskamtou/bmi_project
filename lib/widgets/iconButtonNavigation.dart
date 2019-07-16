import 'package:bmi_project/utilities/constantes.dart';
import 'package:flutter/material.dart';

class IconButtonNavigation extends StatelessWidget {
  final IconData icon;

  IconButtonNavigation(this.icon);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 30,
      color: kMainColor,
    );
  }
}
