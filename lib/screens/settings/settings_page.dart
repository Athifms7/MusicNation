// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:musicnation/screens/header.dart';
import 'package:musicnation/screens/nav_bar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Header(
            name: 'SETTINGS',
          )),
      body: Container(
        width: double.infinity,
        height: 603,
        color: Color.fromRGBO(26, 29, 43, 1),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
