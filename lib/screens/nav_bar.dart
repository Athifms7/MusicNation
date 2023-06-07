// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:musicnation/screens/favourite/favourite_screen.dart';
import 'package:musicnation/screens/home/home_screen.dart';
import 'package:musicnation/screens/playlist/playlist_screen.dart';
import 'package:musicnation/screens/settings/settings_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  static const List<Object> _classOptions = <Object>[];
  @override
  Widget build(BuildContext context) {
    return GNav(
        gap: 8,
        backgroundColor: Color.fromRGBO(1, 7, 29, 1.0),
        activeColor: Colors.white,
        tabBackgroundColor: Color.fromARGB(255, 63, 58, 58),
        color: Colors.white,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
            onPressed: () {
              return Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return HomePage();
                },
              ));
            },
          ),
          GButton(
            icon: Icons.playlist_add_circle_rounded,
            text: 'Playlist',
            onPressed: () {
              return Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) {
                  return PlaylistScreen();
                },
              ));
            },
          ),
          GButton(
            icon: Icons.favorite,
            text: 'Liked',
            onPressed: () {
              return Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) {
                  return FavouriteScreen();
                },
              ));
            },
          ),
          GButton(
            icon: Icons.settings,
            text: 'Settings',
            onPressed: () {
              return Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return SettingsScreen();
                },
              ));
            },
          ),
        ]);
  }
}
