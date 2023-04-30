import 'package:flutter/material.dart';
import 'package:islamic_app/screens/ahadeth.dart';
import 'package:islamic_app/screens/quran.dart';
import 'package:islamic_app/screens/radio.dart';
import 'package:islamic_app/screens/sebha.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> tabs = [
    QuranTab(),
    const SebhaTab(),
    const AhadethTap(),
    const RadioTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
          width: double.infinity,
          child: Image.asset("assets/images/bg3.png", fit: BoxFit.fill)),
      Scaffold(
          appBar: AppBar(
            title: Text("Islami", style: Theme.of(context).textTheme.bodyLarge),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/quran.png"),
                      size: 40),
                  label: "Quran",
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/sebha.png"),
                      size: 40),
                  label: "Sebha",
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/ahadeth.png"),
                      size: 40),
                  label: "Ahadeth",
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/radio.png"),
                      size: 40),
                  label: "Radio",
                  backgroundColor: Theme.of(context).primaryColor),
            ],
          ),
          body: tabs[index]),
    ]);
  }
}
