import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/widgets/sura_details_arg.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "sura-details";

  const SuraDetails({Key? key}) : super(key: key);

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArg;
    if (verses.isEmpty) {
      loadFile(args.suraIndex);
    }
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
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ))
            : ListView.separated(
                separatorBuilder: (context, index) => Divider(
                    thickness: 1,
                    endIndent: 40,
                    indent: 40,
                    color: Theme.of(context).primaryColor),
                itemBuilder: (context, index) => Center(
                  child: Text(
                    verses[index],
                    textAlign: TextAlign.center,
                    style: GoogleFonts.elMessiri(
                        fontSize: 22, color: const Color(0xff242424)),
                  ),
                ),
                itemCount: verses.length,
              ),
      ),
    );
  }

  Future<void> loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = sura.split("\n");
    verses = lines;
    setState(() {});
  }
}
