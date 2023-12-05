import 'package:flutter/material.dart';

import 'app_colors.dart';
export "app_colors.dart";

ThemeData theme = ThemeData(
  primaryColor: AppColors.primary,
  primarySwatch: AppColors.primary,
  fontFamily: "Roboto",
  scaffoldBackgroundColor: AppColors.grey1,
  appBarTheme: const AppBarTheme(
    color: AppColors.grey1,
    elevation: 0.2,
    titleTextStyle: TextStyle(
      fontSize: 16,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
  ),
  textTheme: const TextTheme(
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.black1,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.black1,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.black1,
    ),
    titleLarge: TextStyle(
      fontSize: 28,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      fontSize: 24,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      fontSize: 20,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
  ),
);
