import 'package:flutter/material.dart';
import 'package:islami_app/model/settings_provider.dart';
import 'package:islami_app/resoble_conponan/selected_item.dart';
import 'package:islami_app/resoble_conponan/unselected_item.dart';
import 'package:provider/provider.dart';

class LangaugeSheet extends StatelessWidget {
  const LangaugeSheet({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Container(
      color: Theme.of(context).colorScheme.onSecondaryContainer,
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem(
            value: provider.slectedLanguage == "en" ? "English" : "العربية",
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              provider.ChangeSlectedLanguage(
                  provider.slectedLanguage == "en" ? "ar" : "en");
            },
            child: UnselectedItem(
              value: provider.slectedLanguage == "en" ? "العربية" : "English",
            ),
          ),
        ],
      ),
    );
  }
}
