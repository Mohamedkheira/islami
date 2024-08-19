import 'package:flutter/material.dart';

import '../resoble_conponan/shared_prefrances.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  ChangeThemeMode(ThemeMode newTheme) {
    if (newTheme == themeMode) return;
    themeMode = newTheme;
    SharedPref.setTheme(themeMode);
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
    SharedPref.setLanguage(slectedLanguage);
    notifyListeners();
  }

  init(){
    themeMode = SharedPref.getTheme();
    slectedLanguage = SharedPref.getLanguage();
    notifyListeners();
  }
}
