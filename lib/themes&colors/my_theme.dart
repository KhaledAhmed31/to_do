import 'package:flutter/material.dart';
import 'package:to_do/themes&colors/my_colors.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
      primaryColor: MyColors.lightBG,
      colorScheme: ColorScheme.fromSeed(
          seedColor: MyColors.lightBlue, brightness: Brightness.light),
      scaffoldBackgroundColor: MyColors.lightBG,
      textTheme: TextTheme(
          titleMedium: TextStyle(
              color: MyColors.lightBlue,
              fontSize: 25,
              fontWeight: FontWeight.bold)),
      appBarTheme: const AppBarTheme(
          toolbarHeight: 90,
          titleTextStyle: TextStyle(
              fontSize: 25, letterSpacing: 3, fontWeight: FontWeight.bold),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(size: 40),
        unselectedIconTheme: const IconThemeData(size: 40),
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: MyColors.lightBlue,
        unselectedItemColor: Colors.grey,
      ),
      datePickerTheme: DatePickerThemeData(
        dividerColor: Colors.grey,
        headerBackgroundColor: MyColors.lightBlue,
        headerForegroundColor: Colors.white,
        cancelButtonStyle: TextButton.styleFrom(foregroundColor: Colors.red),
        backgroundColor: Colors.white,
        dayForegroundColor: WidgetStatePropertyAll(MyColors.lightBlue),
        confirmButtonStyle:
            TextButton.styleFrom(foregroundColor: MyColors.lightBlue),
      ));

  static ThemeData darkTheme = ThemeData(
      primaryColor: MyColors.darkBG,
      colorScheme: ColorScheme.fromSeed(
          seedColor: MyColors.lightBlue, brightness: Brightness.dark),
      scaffoldBackgroundColor: MyColors.darkBG,
      textTheme: TextTheme(
          titleMedium: TextStyle(
              color: MyColors.lightBlue,
              fontSize: 25,
              fontWeight: FontWeight.bold)),
      appBarTheme: AppBarTheme(
          toolbarHeight: 90,
          titleTextStyle: const TextStyle(
              fontSize: 25, letterSpacing: 3, fontWeight: FontWeight.bold),
          backgroundColor: Colors.transparent,
          foregroundColor: MyColors.darkBG),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        enableFeedback: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedIconTheme: const IconThemeData(size: 40),
        unselectedIconTheme: const IconThemeData(size: 40),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: MyColors.lightBlue,
        unselectedItemColor: Colors.grey,
      ),
      datePickerTheme: DatePickerThemeData(
        headerBackgroundColor: MyColors.lightBlue,
        headerForegroundColor: MyColors.darkBG,
        cancelButtonStyle: TextButton.styleFrom(foregroundColor: Colors.red),
        backgroundColor: Colors.white,
        dayForegroundColor: WidgetStatePropertyAll(MyColors.lightBlue),
      ));
}
