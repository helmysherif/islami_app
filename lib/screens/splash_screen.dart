import 'package:flutter/material.dart';
import 'package:islamic_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "splash";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    Theme.of(context).colorScheme.brightness == Brightness.light
                        ? "assets/images/bg2.png"
                        : "assets/images/splash_dark.png"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                    Theme.of(context).colorScheme.brightness == Brightness.light
                        ? "assets/images/logo2.png"
                        : "assets/images/logo_dark.png"),
              ),
            ),
            Image.asset(
                Theme.of(context).colorScheme.brightness == Brightness.light
                    ? "assets/images/Group 7.png"
                    : "assets/images/text_dark.png"),
          ],
        ),
      ),
    );
  }
}
