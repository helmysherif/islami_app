import 'package:flutter/material.dart';
import 'package:islamic_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class ShowLanguageBottomSheet extends StatelessWidget {
  const ShowLanguageBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Column(
      children: [
        InkWell(
          onTap: () {
            provider.changeLanguage("en");
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Text("English",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.language == "en"
                          ? Theme.of(context).primaryColor
                          : Colors.black54)),
              const Spacer(),
              Icon(Icons.done,
                  color: provider.language == "en"
                      ? Theme.of(context).primaryColor
                      : Colors.black54,
                  size: 30)
            ],
          ),
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: () {
            provider.changeLanguage("ar");
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Text("Arabic",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.language == "ar"
                          ? Theme.of(context).primaryColor
                          : Colors.black54)),
              const Spacer(),
              Icon(Icons.done,
                  color: provider.language == "ar"
                      ? Theme.of(context).primaryColor
                      : Colors.black54,
                  size: 30)
            ],
          ),
        )
      ],
    );
  }
}
