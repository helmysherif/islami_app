import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Theming"),
        const SizedBox(height: 4),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Theme.of(context).primaryColor)),
          child: Text(
            "Light",
            style:
                Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 22),
          ),
        )
      ],
    );
  }
}
