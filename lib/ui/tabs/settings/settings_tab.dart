import 'package:flutter/material.dart';
import 'package:islami_app/model/settings_provider.dart';
import 'package:islami_app/resoble_conponan/Langauge_sheet.dart';
import 'package:islami_app/resoble_conponan/mode_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(38.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 17,
          ),
          InkWell(
            onTap: (){
              showLanguageButtonSheet();
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 4,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      provider.slectedLanguage=="en"?"English": "العربية" ,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(color:Theme.of(context).colorScheme.primary),
                    ),
                    Icon(Icons.arrow_drop_down,
                    color: Theme.of(context).colorScheme.primary,
                    ),
                  ],
                ),
              ),
          ),
          const SizedBox(
            height: 19,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 17,
          ),
          InkWell(
            onTap: (){
              showModeButtonSheet();
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 4,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.themeMode==ThemeMode.light?"Light":"Dark",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(color:Theme.of(context).colorScheme.primary),
                  ),
                  Icon(Icons.arrow_drop_down,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  showLanguageButtonSheet(){
    showModalBottomSheet(
        context: context, builder: (context)=> LangaugeSheet());
  }

  showModeButtonSheet(){
    showModalBottomSheet(context: context, builder: (context)=> ModeSheet());
  }
}
