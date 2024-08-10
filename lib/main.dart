import 'package:flutter/material.dart';
import 'package:islami_app/style/app_style.dart';
import 'package:islami_app/ui/hadith_screen/hadith_screen.dart';
import 'package:islami_app/ui/sura_content/sura_content_screen.dart';

import 'ui/home_screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: AppStyle.darkTheme,
      theme: AppStyle.lightTheme,
      themeMode: AppStyle.isDark? ThemeMode.dark : ThemeMode.light,
      routes: {
        HomeScreen.routeName:(_) => const HomeScreen(),
        SuraContentScreen.routeName:(_)=> const SuraContentScreen(),
        HadithScreen.routeName:(_)=>const HadithScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}

