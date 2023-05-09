import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamic_app/my_themes.dart';
import 'package:islamic_app/providers/my_provider.dart';
import 'package:islamic_app/screens/hadeth_details.dart';
import 'package:islamic_app/screens/home_screen.dart';
import 'package:islamic_app/screens/splash_screen.dart';
import 'package:islamic_app/screens/sura_details.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => MyProvider()),
    // ChangeNotifierProvider(create:(context) => SuraDetailsProvider())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale(provider.language),
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        SplashScreen.routeName: (_) => const SplashScreen(),
        SuraDetails.routeName: (_) => const SuraDetails(),
        HadethDetails.routeName: (_) => const HadethDetails()
      },
    );
  }
}
