// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:musicnation/dialogs/policy_dialog.dart';

import 'package:musicnation/screens/header.dart';

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
        child: Column(
          children: [
            Container(
              width: 300,
              height: 200,
              decoration: const BoxDecoration(color: Color(0xFF1F1C2B)),
              child: const Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'MUSIC\nNATION',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Icon(
                    Icons.play_circle_filled_rounded,
                    size: 70,
                    color: Colors.redAccent,
                  ),
                ],
              )),
            ),
            SettingCard(
                icon: Icons.find_in_page_outlined,
                text: "Terms And Condition",
                mdFilePath: 'terms_and_condition.md'),
            SettingCard(
              icon: Icons.policy_outlined,
              text: 'Privacy Policy',
              mdFilePath: 'privacy_policy.md',
            ),
            SettingCard(icon: Icons.share, text: 'Share'),
            SettingCard(icon: Icons.restore_from_trash, text: 'Reset App'),
            SettingCard(
              icon: Icons.info_outline,
              text: 'About',
              mdFilePath: 'about.md',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                  child: Text(
                'Version 1.0.0',
                style: TextStyle(color: Colors.white),
              )),
            )
          ],
        ),
      ),
    );
  }
}

class SettingCard extends StatelessWidget {
  final IconData? icon;
  final String text;
  final String mdFilePath;
  SettingCard(
      {super.key,
      required this.icon,
      required this.text,
      this.mdFilePath = '0'});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return PolicyDialog(mdFileName: mdFilePath);
          },
        );
      },
      child: Container(
        width: 300,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Card(
          color: const Color.fromRGBO(31, 37, 61, 1),
          child: ListTile(
            textColor: Colors.white,
            iconColor: Colors.white,
            leading: Icon(icon),
            title: Text('$text'),
          ),
        ),
      ),
    );
  }
}
