import 'package:flutter/material.dart';
import 'package:islami_app/model/settings_provider.dart';
import 'package:islami_app/resoble_conponan/selected_item.dart';
import 'package:islami_app/resoble_conponan/unselected_item.dart';
import 'package:provider/provider.dart';

class ModeSheet extends StatelessWidget {
  const ModeSheet({super.key});

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
            value: provider.themeMode==ThemeMode.light?"Light":"Dark",
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: (){
              provider.ChangeThemeMode(provider.themeMode==ThemeMode.light
              ?ThemeMode.dark
              :ThemeMode.light
              );
            },
            child: UnselectedItem(
              value: provider.themeMode==ThemeMode.light?"Dark":"Light",
            ),
          ),
        ],
      ),
    );
  }
}
