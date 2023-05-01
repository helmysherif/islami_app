import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/screens/hadeth_details.dart';
import 'package:islamic_app/widgets/hadeth_model.dart';

class AhadethTap extends StatefulWidget {
  AhadethTap({Key? key}) : super(key: key);

  @override
  State<AhadethTap> createState() => _AhadethTapState();
}

class _AhadethTapState extends State<AhadethTap> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadHadeth();
    }
    return Column(
      children: [
        Image.asset("assets/images/hadeth_icon.png"),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
          height: 0,
        ),
        Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: const Text("الأحاديث",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black))),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
          height: 0,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: Theme.of(context).primaryColor,
              thickness: 2,
              height: 0,
              indent: 30,
              endIndent: 30,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetails.routeName,
                      arguments: allAhadeth[index]);
                },
                child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(allAhadeth[index].title,
                        textAlign: TextAlign.center)),
              );
            },
            itemCount: allAhadeth.length,
          ),
        ),
      ],
    );
  }

  Future<void> loadHadeth() async {
    try {
      String Hadeth = await rootBundle.loadString("assets/files/ahadeth.txt");
      List<String> ahadethContent = Hadeth.split("#");
      for (int i = 0; i < ahadethContent.length; i++) {
        List<String> hadethLines = ahadethContent[i].trim().split("\n");
        String title = hadethLines[0];
        hadethLines.removeAt(0);
        List<String> content = hadethLines;
        HadethModel hadethModel = HadethModel(title: title, content: content);
        allAhadeth.add(hadethModel);
      }
    } catch (error) {}
    setState(() {});
  }
}
