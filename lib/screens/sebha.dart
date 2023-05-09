import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({Key? key}) : super(key: key);

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;
  int index = 0;
  List<String> sebhaNames = [
    "سبحان الله",
    "الحمد لله",
    "لا إله إلا الله",
    "الله أكبر"
  ];

  @override
  Widget build(BuildContext context) {
    if (count > 33) {
      index++;
      count = 0;
      setState(() {});
    }
    if (index > sebhaNames.length - 1) {
      index = 0;
    }
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Center(
              child: InkWell(
                  onTap: () {
                    count++;
                    setState(() {});
                  },
                  child: Image.asset(
                      Theme.of(context).colorScheme.brightness ==
                              Brightness.light
                          ? "assets/images/Group 8.png"
                          : "assets/images/sebha_dark.png",
                      width: 250,
                      height: 250))),
        ),
        const SizedBox(height: 50),
        Text("عدد التسبيحات", style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 40),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).primaryColor,
            ),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Text("$count",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.brightness ==
                            Brightness.light
                        ? Colors.black
                        : Colors.white))),
        const SizedBox(height: 30),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:
                  Theme.of(context).colorScheme.brightness == Brightness.light
                      ? Theme.of(context).primaryColor
                      : const Color(0xffFACC1D),
            ),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Text(sebhaNames[index],
                style: TextStyle(
                    color: Theme.of(context).colorScheme.brightness ==
                            Brightness.light
                        ? Colors.white
                        : Colors.black))),
      ],
    );
  }
}
