import 'package:flutter/material.dart';

class AppColors {
  static const white = Colors.white;
  static const black = Color(0xff000000);
  static const grey = Colors.grey;
  static const grey1 = Color(0xFFFAFAFB);
  static const grey2 = Color(0xFFF4F4F5);
  static const black1 = Color(0xFF1E232C);
  static const red = Colors.red;
  static const green = Colors.green;
  static const pink = Color(0xFF9747FF);
  static const orange = Colors.orange;

  static const MaterialColor primary =
      MaterialColor(_primaryPrimaryValue, <int, Color>{
    50: Color(0xFFFEE4EB),
    100: Color(0xFFFDBCCC),
    200: Color(0xFFFB90AA),
    300: Color(0xFFF96388),
    400: Color(0xFFF8416F),
    500: Color(_primaryPrimaryValue),
    600: Color(0xFFF61C4E),
    700: Color(0xFFF51844),
    800: Color(0xFFF3133B),
    900: Color(0xFFF10B2A),
  });
  static const int _primaryPrimaryValue = 0xFFF72055;

  static const MaterialColor primaryAccent =
      MaterialColor(_primaryAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_primaryAccentValue),
    400: Color(0xFFFFB5BD),
    700: Color(0xFFFF9CA6),
  });
  static const int _primaryAccentValue = 0xFFFFE8EA;
}
