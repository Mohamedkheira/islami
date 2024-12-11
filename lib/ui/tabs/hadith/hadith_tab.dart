import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/model/hadeth_model.dart';
import 'package:islami_app/resoble_conponan/ahadeth_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadithTab extends StatefulWidget {
  HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  @override
  Widget build(BuildContext context) {
    if (ahadethList.isEmpty) {
      loadFile();
    }
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(
            "assets/images/ahadeth_image.png",
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          decoration: BoxDecoration(
            border: BorderDirectional(
              top: BorderSide(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                width: 3,
              ),
              bottom: BorderSide(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                width: 3,
              ),
            ),
          ),
          child: Text(
            AppLocalizations.of(context)!.alahadith,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Expanded(
          flex: 2,
          child: ahadethList.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.separated(
                  itemBuilder: (context, index) => AhadethItem(hadeth: ahadethList[index],),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: ahadethList.length),
        ),
      ],
    );
  }

  List<HadethModel> ahadethList = [];
  loadFile() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadeth = content.split("#");
    for (var i = 0; i < ahadeth.length; i++) {
      List<String> oneHadethContent = ahadeth[i].trim().split("\n");
      String hadethTitle = oneHadethContent[0];
      oneHadethContent.removeAt(0);
      String hadethContent = oneHadethContent.join("\n");
      ahadethList.add(HadethModel(title: hadethTitle, content: hadethContent));
    }
    setState(() {

    });
  }
}
