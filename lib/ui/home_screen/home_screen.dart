import 'package:flutter/material.dart';
import 'package:islami_app/style/app_style.dart';
import 'package:islami_app/ui/tabs/hadith/hadith_tab.dart';
import 'package:islami_app/ui/tabs/radio/radio_tab.dart';
import 'package:islami_app/ui/tabs/sebha/sebha_tab.dart';
import 'package:islami_app/ui/tabs/settings/settings_tab.dart';

import '../tabs/quran/quran_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    const SebhaTab(),
    const RadioTab(),
    const SettingsTab(),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppStyle.isDark
              ? "assets/images/background_dark.png"
              : "assets/images/background.png"),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Islami",
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(
                AssetImage(
                  "assets/images/moshaf_icon.png",
                ),
              ),
              label: "Quran",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(
                AssetImage(
                  "assets/images/hadith_icon.png",
                ),
              ),
              label: "Hadith",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(
                AssetImage(
                  "assets/images/sebha_icon.png",
                ),
              ),
              label: "Sebha",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(
                AssetImage(
                  "assets/images/radio_icon.png",
                ),
              ),
              label: "Radio",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const Icon(
                Icons.settings,
              ),
              label: "Settings",
            ),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
