import 'package:flutter/material.dart';
import 'package:islamic_app/providers/ahadith_provider.dart';
import 'package:islamic_app/screens/hadeth_details.dart';
import 'package:provider/provider.dart';

class AhadethTap extends StatelessWidget {
  const AhadethTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AhadithProvider()..loadHadith(),
        builder: (context, child) {
          var provider = Provider.of<AhadithProvider>(context);
          return Column(
            children: [
              Image.asset("assets/images/hadeth_icon.png"),
              Divider(
                color:
                    Theme.of(context).colorScheme.brightness == Brightness.light
                        ? Theme.of(context).primaryColor
                        : const Color(0xffFACC1D),
                thickness: 3,
                height: 0,
              ),
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text("الأحاديث",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.brightness ==
                                  Brightness.light
                              ? Colors.black
                              : Colors.white))),
              Divider(
                color:
                    Theme.of(context).colorScheme.brightness == Brightness.light
                        ? Theme.of(context).primaryColor
                        : const Color(0xffFACC1D),
                thickness: 3,
                height: 0,
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    color: Theme.of(context).colorScheme.brightness ==
                            Brightness.light
                        ? Theme.of(context).primaryColor
                        : const Color(0xffFACC1D),
                    thickness: 2,
                    height: 0,
                    indent: 30,
                    endIndent: 30,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, HadethDetails.routeName,
                            arguments: provider.allAhadeth[index]);
                      },
                      child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(provider.allAhadeth[index].title,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontSize: 18),
                              textAlign: TextAlign.center)),
                    );
                  },
                  itemCount: provider.allAhadeth.length,
                ),
              ),
            ],
          );
        });
  }
}
