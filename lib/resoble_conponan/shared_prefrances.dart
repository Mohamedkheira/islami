import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref{
  static late SharedPreferences prefs;



  static setTheme(ThemeMode mode){
    prefs.setBool("theme", mode==ThemeMode.dark?true:false);
  }

  static getTheme(){
    bool isDark = prefs.getBool("theme")??false;
    if(isDark){
      return ThemeMode.dark;
    }else{
      return ThemeMode.light;
    }
  }
  String language ="en";
  static setLanguage(String selectLanguage){
    prefs.setString("language", selectLanguage="en");
  }

  static getLanguage(){
    String isEnglish = prefs.getString("ar")??"en";
    if(isEnglish=="en"){
      return "en";
    }else{
      return "ar";
    }
  }
  static init() async {
    prefs = await SharedPreferences.getInstance();
  }
}