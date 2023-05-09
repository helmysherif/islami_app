import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_app/providers/my_provider.dart';
import 'package:islamic_app/screens/sura_details.dart';
import 'package:islamic_app/widgets/sura_details_arg.dart';
import 'package:provider/provider.dart';

class QuranTab extends StatelessWidget {
  QuranTab({Key? key}) : super(key: key);
  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  List<int> suraNumbers = [
    7,
    286,
    200,
    176,
    120,
    165,
    206,
    75,
    129,
    109,
    123,
    111,
    43,
    52,
    99,
    128,
    111,
    110,
    98,
    135,
    112,
    78,
    118,
    64,
    77,
    227,
    93,
    88,
    69,
    60,
    34,
    30,
    73,
    54,
    45,
    83,
    182,
    88,
    75,
    85,
    54,
    53,
    89,
    59,
    37,
    35,
    38,
    29,
    18,
    45,
    60,
    49,
    62,
    55,
    78,
    96,
    29,
    22,
    24,
    13,
    14,
    11,
    11,
    18,
    12,
    12,
    30,
    52,
    52,
    44,
    28,
    28,
    20,
    56,
    40,
    31,
    50,
    40,
    46,
    42,
    29,
    19,
    36,
    25,
    22,
    17,
    19,
    26,
    30,
    20,
    15,
    21,
    11,
    8,
    8,
    19,
    5,
    8,
    8,
    11,
    11,
    8,
    3,
    9,
    5,
    4,
    7,
    3,
    6,
    3,
    5,
    4,
    5,
    6
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("assets/images/quranbg.png"),
        Divider(
          color: Theme.of(context).colorScheme.brightness == Brightness.light
              ? Theme.of(context).primaryColor
              : const Color(0xffFACC1D),
          thickness: 3,
          height: 0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(AppLocalizations.of(context)!.ayaNumbers,
                style: Theme.of(context).textTheme.bodyMedium),
            Container(
              width: 3,
              color:
                  Theme.of(context).colorScheme.brightness == Brightness.light
                      ? Theme.of(context).primaryColor
                      : const Color(0xffFACC1D),
              height: 55,
            ),
            Text(AppLocalizations.of(context)!.suraNames,
                style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        Divider(
          color: Theme.of(context).colorScheme.brightness == Brightness.light
              ? Theme.of(context).primaryColor
              : const Color(0xffFACC1D),
          thickness: 3,
          height: 0,
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    color: Theme.of(context).colorScheme.brightness ==
                        Brightness.light
                        ? Theme.of(context).primaryColor
                        : const Color(0xffFACC1D),
                    thickness: 2,
                    height: 0,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, SuraDetails.routeName,
                            arguments: SuraDetailsArg(suraNames[index], index));
                      },
                      child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Text("${suraNumbers[index]}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(fontSize: 18)),
                                ),
                              ),
                              Container(
                            margin: provider.language == 'en'
                                ? const EdgeInsets.only(left: 2)
                                : const EdgeInsets.only(left: 21),
                            width: 3,
                            color: Theme.of(context).colorScheme.brightness ==
                                    Brightness.light
                                ? Theme.of(context).primaryColor
                                : const Color(0xffFACC1D),
                            height: 45,
                          ),
                              Expanded(
                                child: Center(
                                  child: Text(suraNames[index],
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(fontSize: 18)),
                                ),
                              ),
                            ],
                          )),
                    );
                  },
                  itemCount: suraNames.length,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
