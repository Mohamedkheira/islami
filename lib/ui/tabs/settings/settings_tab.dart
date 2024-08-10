import 'package:flutter/material.dart';
import 'package:islami_app/resoble_conponan/Langauge_sheet.dart';
import 'package:islami_app/resoble_conponan/mode_sheet.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(38.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
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
                      "English",
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
            "Theme",
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
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Light",
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
