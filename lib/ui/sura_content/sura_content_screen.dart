import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/ui/sura_content/sura_content_item.dart';

class SuraContentScreen extends StatefulWidget {
  static const String routeName = "SuraContentScreen";

  const SuraContentScreen({super.key});

  @override
  State<SuraContentScreen> createState() => _SuraContentScreenState();
}

class _SuraContentScreenState extends State<SuraContentScreen> {
  @override
  Widget build(BuildContext context) {
    SuraContentArgs args =
        ModalRoute.of(context)?.settings.arguments as SuraContentArgs;
    if(verses.isEmpty){
      loadFile(args.index);
    }
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.png"),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Islami",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: Card(
          margin: EdgeInsets.all(20),
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
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      width: 26,
                    ),
                    const Icon(
                      Icons.play_circle,
                      size: 27,
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
