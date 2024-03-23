import 'package:flutter/material.dart';

class AppColors {
  static Color lightAccent = Colors.grey;
  static Color darkAccent = Colors.deepPurple;
  static Color lightScaffoldBackgroundColor = const Color(0xffffffff);
  static Color darkScaffoldBackgroundColor = const Color(0xff111111);
}

class Themes {
  static const bool isLightTheme = false;

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.lightScaffoldBackgroundColor,
      appBarTheme: AppBarTheme(
        centerTitle: true,
          elevation: 1,
          backgroundColor: AppColors.lightAccent,
          foregroundColor: Colors.white),
      colorScheme: ColorScheme.light(
          primary: AppColors.lightAccent, secondary: AppColors.lightAccent));

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.darkScaffoldBackgroundColor,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
          foregroundColor: Colors.white),
      colorScheme: ColorScheme.dark(
          primary: AppColors.darkAccent, secondary: AppColors.darkAccent));
}

extension GapWidget on num{
  SizedBox get ph => SizedBox(height: toDouble());
  SizedBox get pw => SizedBox(width: toDouble());
}