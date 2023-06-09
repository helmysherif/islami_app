import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyThemeData {
  static const Color lightColor = Color(0xffB7935F);
  static const Color darkColor = Color(0xff141A2E);
  static const Color yellowColor = Color(0xffFACC1D);
  static ThemeData lightTheme = ThemeData(
      primaryColor: lightColor,
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: lightColor,
          onPrimary: Colors.black54,
          secondary: Colors.grey.shade300,
          onSecondary: Colors.black,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.transparent,
          onBackground: lightColor,
          surface: Colors.white,
          onSurface: Colors.black54),
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20, fontWeight: FontWeight.bold, color: lightColor),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        bodyLarge: GoogleFonts.elMessiri(
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
  static ThemeData darkTheme = ThemeData(
      primaryColor: darkColor,
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: darkColor,
          onPrimary: Colors.white,
          secondary: yellowColor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.transparent,
          onBackground: darkColor,
          surface: darkColor,
          onSurface: yellowColor),
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20, fontWeight: FontWeight.bold, color: yellowColor),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white, size: 30)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: darkColor,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: yellowColor,
          selectedLabelStyle: TextStyle(color: yellowColor),
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: TextStyle(color: darkColor)));
}
