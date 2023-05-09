import 'package:flutter/material.dart';
import 'package:islamic_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class ShowThemeBottomSheet extends StatelessWidget {
  const ShowThemeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Column(
      children: [
        InkWell(
          onTap: () {
            provider.changeTheme(ThemeMode.light);
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Text("Light",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.themeMode == ThemeMode.light
                          ? Theme.of(context).primaryColor
                          : Colors.white)),
              const Spacer(),
              Icon(Icons.done,
                  color: provider.themeMode == ThemeMode.light
                      ? Theme.of(context).primaryColor
                      : Colors.white,
                  size: 30)
            ],
          ),
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: () {
            provider.changeTheme(ThemeMode.dark);
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Text("Dark",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.themeMode == ThemeMode.light
                          ? Colors.black54
                          : Theme.of(context).colorScheme.secondary)),
              const Spacer(),
              Icon(Icons.done,
                  color: provider.themeMode == ThemeMode.light
                      ? Colors.black54
                      : Theme.of(context).colorScheme.secondary,
                  size: 30)
            ],
          ),
        )
      ],
    );
  }
}
