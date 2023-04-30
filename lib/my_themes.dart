import 'package:flutter/material.dart';

class MyThemeData {
  static const Color lightColor = Color(0xffB7935F);
  static ThemeData lightTheme = ThemeData(
      primaryColor: lightColor,
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: const TextTheme(
        bodySmall: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: lightColor),
        bodyMedium: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: lightColor),
        bodyLarge: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: lightColor, size: 30)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: lightColor,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(color: Colors.black),
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: TextStyle(color: Colors.white)));
  static ThemeData darkTheme = ThemeData();
}