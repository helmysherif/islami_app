import 'package:flutter/material.dart';
import 'package:islamic_app/my_themes.dart';
import 'package:islamic_app/screens/home_screen.dart';
import 'package:islamic_app/screens/splash_screen.dart';
import 'package:islamic_app/screens/sura_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      // themeMode: ThemeMode.light,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        SplashScreen.routeName: (_) => const SplashScreen(),
        SuraDetails.routeName: (_) => SuraDetails()
      },
    );
  }
}
