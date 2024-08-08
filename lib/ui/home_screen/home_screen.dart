import 'package:flutter/material.dart';
import 'package:islami_app/ui/tabs/hadith/hadith_tab.dart';
import 'package:islami_app/ui/tabs/radio/radio_tab.dart';
import 'package:islami_app/ui/tabs/sebha/sebha_tab.dart';

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
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.png"),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Islami",
            style: Theme.of(context).textTheme.headlineSmall,
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
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
