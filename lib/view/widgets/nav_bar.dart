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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: GNav(
        onTabChange: (value) {
          selectedIndex = value;
          setState(() {});
        },
        selectedIndex: selectedIndex,
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
        ],
      ),
    );
  }
}
