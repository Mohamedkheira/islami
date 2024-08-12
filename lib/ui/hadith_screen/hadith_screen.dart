import 'package:flutter/material.dart';
import 'package:islami_app/model/hadeth_model.dart';
import 'package:islami_app/style/app_style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadithScreen extends StatelessWidget {
  static const String routeName = "HadithScreen";
  const HadithScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HadethModel args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppStyle.isDark
              ? "assets/images/background_dark.png"
              : "assets/images/background.png"),
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
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      args.title,
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
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        child: Text(
                          args.content,
                          style: Theme.of(context).textTheme.bodyLarge,
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
