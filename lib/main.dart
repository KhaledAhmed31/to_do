import 'package:flutter/material.dart';
import 'package:to_do/screens/edit.dart';
import 'package:to_do/screens/home.dart';
import 'package:to_do/themes&colors/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do',
      routes: {
        Home.routeName: (context) => const Home(),
        Edit.routeName: (context) => const Edit()
      },
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
    );
  }
}
