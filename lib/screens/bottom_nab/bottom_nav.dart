import 'package:bus_booking/screens/home_page/home_page.dart';
import 'package:bus_booking/screens/list_page/list_page.dart';
import 'package:bus_booking/screens/person_page/person_page.dart';
import 'package:bus_booking/screens/settings_page/settings_page.dart';
import 'package:bus_booking/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Bottom_Nav extends StatefulWidget {
  const Bottom_Nav({super.key});

  @override
  State<Bottom_Nav> createState() => _Bottom_NavState();
}

class _Bottom_NavState extends State<Bottom_Nav> {
  int _selectedIndex = 0;
  void _navBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = const [
    HomePage(),
    PersonPag(),
    ListPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColorDark,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: GNav(
          gap: 8,
          onTabChange: _navBottomBar,
          padding: const EdgeInsets.all(16),
          activeColor: kWeightColor,
          color: Colors.black87,
          tabBackgroundColor: Colors.black87,
          tabs: const [
            GButton(
              icon: Icons.home_rounded,
              text: 'Home',
            ),
            GButton(
              icon: Icons.person_pin,
              text: 'Person',
            ),
            GButton(
              icon: Icons.list_outlined,
              text: 'List',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
