// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_pm/Page/home_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  int activeIndex = 0;

  List<Widget> pages = [
    Homepage(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activeIndex,
        onTap: (int index) {
          setState(() {
          activeIndex = index;
          });
        },
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,), label: 'Discover'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.tv_outlined), label: 'TV News'),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: 'Settings'),
        ],
      ),
    );
  }
}