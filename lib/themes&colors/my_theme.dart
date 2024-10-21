import 'package:flutter/material.dart';
import 'package:to_do/themes&colors/my_colors.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: MyColors.lightBlue),
    scaffoldBackgroundColor: MyColors.lightBG,
    appBarTheme: AppBarTheme(
        backgroundColor: MyColors.lightBlue, foregroundColor: Colors.white),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: MyColors.lightBlue,
      unselectedItemColor: Colors.grey,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: MyColors.lightBlue),
    scaffoldBackgroundColor: MyColors.darkBG,
    appBarTheme: AppBarTheme(
        backgroundColor: MyColors.lightBlue, foregroundColor: MyColors.darkBG),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: MyColors.lightBlue,
      unselectedItemColor: Colors.grey,
    ),
  );
}
