import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/hadeth_model.dart';

class AhadithProvider extends ChangeNotifier {
  List<HadethModel> allAhadeth = [];

  Future<void> loadHadith() async {
    try {
      String hadith = await rootBundle.loadString("assets/files/ahadeth.txt");
      List<String> hadithContent = hadith.split("#");
      for (int i = 0; i < hadithContent.length; i++) {
        List<String> hadithLines = hadithContent[i].trim().split("\n");
        String title = hadithLines[0];
        hadithLines.removeAt(0);
        List<String> content = hadithLines;
        HadethModel hadithModel = HadethModel(title: title, content: content);
        allAhadeth.add(hadithModel);
        notifyListeners();
      }
    } catch (error) {}
  }
}
