import 'package:dic_project/view/about_page.dart';
import 'package:dic_project/view/games_page.dart';
import 'package:dic_project/view/home_page.dart';
import 'package:dic_project/view/voice_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBarMenu extends StatefulWidget {
  const NavBarMenu({super.key});

  @override
  State<NavBarMenu> createState() => _NavBarMenuState();
}

class _NavBarMenuState extends State<NavBarMenu> {
  int selectedIndex = 0;

  List<Widget> pages = [
    const HomePage(),
    const VoicePage(),
    const GamePage(),
    const AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: Container(
          color: Colors.purple[200],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: GNav(
              onTabChange: (value) {
                selectedIndex = value;
                setState(() {});
              },
              selectedIndex: selectedIndex,
              backgroundColor: Colors.purple.shade200,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.purple,
              gap: 8,
              padding: const EdgeInsets.all(10),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Principal',
                ),
                GButton(
                  icon: Icons.mic,
                  text: 'Voz',
                ),
                GButton(
                  icon: Icons.games,
                  text: 'Jogos',
                ),
                GButton(
                  icon: Icons.file_copy_outlined,
                  text: 'Sobre',
                ),
              ],
            ),
          ),
        ));
  }
}
