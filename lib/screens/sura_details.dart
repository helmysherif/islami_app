import 'package:flutter/material.dart';
import 'package:islamic_app/widgets/sura_details_arg.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName = "sura-details";

  const SuraDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArg;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bg3.png"), fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title:
              Text(args.suraName, style: Theme.of(context).textTheme.bodyLarge),
        ),
      ),
    );
  }
}
