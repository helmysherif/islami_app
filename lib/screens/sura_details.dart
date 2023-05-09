import 'package:flutter/material.dart';
import 'package:islamic_app/widgets/sura_details_arg.dart';
import 'package:provider/provider.dart';

import '../providers/sura_details_provider.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName = "sura-details";

  const SuraDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArg;
    return ChangeNotifierProvider(
      create: (context) => SuraDetailsProvider()..loadFile(args.suraIndex),
      builder: (context, child) {
        var provider = Provider.of<SuraDetailsProvider>(context);
        return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    Theme.of(context).colorScheme.brightness == Brightness.light
                        ? "assets/images/bg3.png"
                        : "assets/images/dark_bg.png",
                  ),
                  fit: BoxFit.fill),
            ),
            child: Scaffold(
              appBar: AppBar(
                title: Text(args.suraName,
                    style: Theme.of(context).textTheme.bodyLarge),
              ),
              body: provider.verses.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor,
                    ))
                  : ListView.separated(
                      separatorBuilder: (context, index) => Divider(
                          thickness: 1,
                          endIndent: 40,
                          indent: 40,
                          color: Theme.of(context).colorScheme.brightness ==
                                  Brightness.light
                              ? Theme.of(context).primaryColor
                              : const Color(0xffFACC1D)),
                      itemBuilder: (context, index) => Center(
                        child: Text(
                          provider.verses[index],
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontSize: 20),
                        ),
                      ),
                      itemCount: provider.verses.length,
                    ),
            ));
      },
    );
  }
}
