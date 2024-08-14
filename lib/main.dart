import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/model/settings_provider.dart';
import 'package:islami_app/style/app_style.dart';
import 'package:islami_app/ui/hadith_screen/hadith_screen.dart';
import 'package:islami_app/ui/sura_content/sura_content_screen.dart';
import 'package:provider/provider.dart';
import 'ui/home_screen/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context)=>SettingsProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates:const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales:const [
        Locale('en'),
        Locale('ar'),
      ],
      locale: Locale(settingsProvider.slectedLanguage),
      darkTheme: AppStyle.darkTheme,
      theme: AppStyle.lightTheme,
      themeMode: settingsProvider.themeMode,
      routes: {
        HomeScreen.routeName:(_) => const HomeScreen(),
        SuraContentScreen.routeName:(_)=> const SuraContentScreen(),
        HadithScreen.routeName:(_)=>const HadithScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}

