import 'package:flutter/material.dart';

class AppStyle{
  static const Color primaryLightcolor = Color(0xffB7935F);
  static const Color primaryDarkcolor = Color(0xff141A2E);
  static const Color secoundryDarkcolor = Color(0xffFACC1D);
  static const Color onprimaryDarkcolor = Colors.white;

  static ThemeData lightTheme = ThemeData(
    cardTheme: const CardTheme(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 10,
    ),
    textTheme: const TextTheme(
      headlineSmall:  TextStyle(
        fontFamily: "KOUFIBD",
        fontSize: 25,
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
      bodySmall: TextStyle(
          fontFamily: "DTHULUTH",
          fontSize: 20,
          fontWeight: FontWeight.bold,
        color: primaryLightcolor
      ),
      titleLarge: TextStyle(
        fontFamily: "KOUFIBD",
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    dividerTheme: const DividerThemeData(
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
      onSecondary: Colors.black,
      onPrimaryContainer: primaryLightcolor,
      onSecondaryContainer: Colors.white,
    ),
    useMaterial3: true,

  );
  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryDarkcolor,
      primary: primaryDarkcolor,
      secondary: secoundryDarkcolor,
      onPrimaryContainer: secoundryDarkcolor,
      onSecondaryContainer: primaryDarkcolor,
    ),
    cardTheme: CardTheme(
      color: primaryDarkcolor,
      surfaceTintColor: primaryDarkcolor,
    ),
    iconTheme: IconThemeData(
      color: onprimaryDarkcolor,
    ),
    textTheme: const TextTheme(
      headlineSmall: const TextStyle(
        fontFamily: "KOUFIBD",
        fontSize: 25,
        color: secoundryDarkcolor,
      ),
      headlineMedium: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 25,
        color: onprimaryDarkcolor,
      ),
      bodyMedium: TextStyle(
          fontFamily: "KOUFIBD",
          fontSize: 25,
          fontWeight: FontWeight.bold,
        color: onprimaryDarkcolor,
      ),
      bodyLarge: TextStyle(
          fontFamily: "DTHULUTH",
          fontSize: 20,
        color: secoundryDarkcolor,
      ),
      bodySmall: TextStyle(
          fontFamily: "DTHULUTH",
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: secoundryDarkcolor,
      ),
      titleLarge: TextStyle(
        fontFamily: "KOUFIBD",
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: secoundryDarkcolor,
      thickness: 3,
      space: 0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: secoundryDarkcolor,
      unselectedItemColor: onprimaryDarkcolor,
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
        color: onprimaryDarkcolor,
        fontFamily: "ElMessiri",
      ),
      centerTitle: true,
    ),

  );
}