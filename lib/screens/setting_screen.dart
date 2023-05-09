import 'package:flutter/material.dart';
import 'package:islamic_app/providers/my_provider.dart';
import 'package:islamic_app/widgets/showLanguage_buttonSheet.dart';
import 'package:provider/provider.dart';

import '../widgets/showTheme_bottomSheet.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Theming"),
          const SizedBox(height: 4),
          InkWell(
            onTap: () {
              showThemeSheet();
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                      color: Theme.of(context).colorScheme.brightness ==
                              Brightness.light
                          ? Theme.of(context).primaryColor
                          : Colors.white)),
              child: Text(
                provider.themeMode == ThemeMode.light ? 'Light' : 'Dark',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 22),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text("Language"),
          const SizedBox(height: 4),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                    color: Theme.of(context).colorScheme.brightness ==
                            Brightness.light
                        ? Theme.of(context).primaryColor
                        : Colors.white)),
            child: InkWell(
              onTap: () {
                showLanguageSheet();
              },
              child: Text(
                provider.language == 'en' ? 'English' : 'عربي',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 22),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return const ShowLanguageBottomSheet();
        });
  }

  void showThemeSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return const ShowThemeBottomSheet();
        });
  }
}
