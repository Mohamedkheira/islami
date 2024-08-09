import 'package:flutter/material.dart';
import 'package:islami_app/ui/hadith_screen/hadith_screen.dart';
import 'package:islami_app/ui/sura_content/sura_content_screen.dart';

import 'ui/home_screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 Color primaryLightcolor = const Color(0xffB7935F);
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       cardTheme: const CardTheme(
         color: Colors.white,
         surfaceTintColor: Colors.white,
         elevation: 10,
       ),
        textTheme: const TextTheme(
          headlineSmall:  TextStyle(
            fontFamily: "ElMessiri",
            fontSize: 30,
          ),
          headlineMedium: TextStyle(
            fontFamily: "ElMessiri",
            fontSize: 25,
          ),
          bodyMedium: TextStyle(
            fontFamily: "KOUFIBD",
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
          bodyLarge: TextStyle(
              fontFamily: "DTHULUTH",
              fontSize: 20,
            color: Colors.black
          ),
        ),
        dividerTheme: DividerThemeData(
          color: primaryLightcolor,
          thickness: 3,
          space: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            size: 40,
          ),
          unselectedIconTheme: IconThemeData(
            size: 40,
          ),
        ),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xff242424),
          ),
          centerTitle: true,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryLightcolor,
          primary: primaryLightcolor,
          onPrimary: const Color(0xff707070),
          secondary: primaryLightcolor.withOpacity(0.57),
        ),
        useMaterial3: true,
      ),
      routes: {
        HomeScreen.routeName:(_) => const HomeScreen(),
        SuraContentScreen.routeName:(_)=> const SuraContentScreen(),
        HadithScreen.routeName:(_)=>const HadithScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}

