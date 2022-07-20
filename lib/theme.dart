import 'package:flutter/material.dart';

final ThemeData themeData = ThemeData(
    brightness: Brightness.light,
    cardColor: Colors.white,
    dividerColor: Colors.grey[300],
    backgroundColor: Colors.grey[100],
    primaryColor: CustomColors.theme[500]);

class CustomColors {
  CustomColors._(); // this basically makes it so you can instantiate this class
  static const Map<int, Color> theme = <int, Color>{
    500: Color(0xFFFBC812),
    600: Color(0xFFFEAD22),
  };

  static const Map<int, Color> accent = <int, Color>{
    500: Color(0xFFF57C00),
  };
}
