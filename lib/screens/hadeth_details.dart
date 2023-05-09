import 'package:flutter/material.dart';
import 'package:islamic_app/widgets/hadeth_model.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "hadeth-details";

  const HadethDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
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
              title: Text(args.title,
                  style: Theme.of(context).textTheme.bodyLarge),
            ),
            body: SingleChildScrollView(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Card(
                  elevation: 12,
                  margin: const EdgeInsets.all(12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                      side: BorderSide(color: Theme.of(context).primaryColor)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "${args.content}",
                      style: Theme.of(context).textTheme.bodySmall,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            )));
  }
}
