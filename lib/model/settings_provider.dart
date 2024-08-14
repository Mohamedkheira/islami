import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  ChangeThemeMode(ThemeMode newTheme) {
    if (newTheme == themeMode) return;
    themeMode = newTheme;
    notifyListeners();
  }


  String ChooseBackground(){
    if(themeMode==ThemeMode.dark){
      return "assets/images/background_dark.png";
    }else{
      return "assets/images/background.png";
    }
  }



  String slectedLanguage = "en";

  ChangeSlectedLanguage(String newLanguage){
    if(slectedLanguage== newLanguage) return;
    slectedLanguage = newLanguage;
    notifyListeners();
  }
}
