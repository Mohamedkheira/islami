import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/model/settings_provider.dart';
import 'package:islami_app/style/app_style.dart';
import 'package:islami_app/ui/sura_content/sura_content_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class SuraContentScreen extends StatefulWidget {
  static const String routeName = "SuraContentScreen";

  const SuraContentScreen({super.key});

  @override
  State<SuraContentScreen> createState() => _SuraContentScreenState();
}

class _SuraContentScreenState extends State<SuraContentScreen> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    SuraContentArgs args =
        ModalRoute.of(context)?.settings.arguments as SuraContentArgs;
    if(verses.isEmpty){
      loadFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(provider.ChooseBackground()),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.islami,
          ),
          iconTheme: Theme.of(context).iconTheme,
        ),
        body: Card(
          margin:  const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      args.suraNames,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(
                      width: 26,
                    ),
                    Icon(
                      Icons.play_circle,
                      size: 27,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                const Divider(
                  indent: 50,
                  endIndent: 50,
                ),

                verses.isEmpty
                    ? const Center(child: CircularProgressIndicator())
                    : Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ListView.separated(
                            itemBuilder: (context, index) => SuraContentItem(verses: verses[index].trim(),index: index,),
                            separatorBuilder: (context, index) => const Divider(),
                            itemCount: verses.length),
                      ),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<String> verses = [];

  loadFile(int index) async {
    String suraContent = await rootBundle.loadString(
      "assets/files/${index + 1}.txt",
    );
    setState(() {
      verses = suraContent.split("\n");
    });
  }
}

class SuraContentArgs {
  String suraNames;
  int index;

  SuraContentArgs({required this.suraNames, required this.index});
}
