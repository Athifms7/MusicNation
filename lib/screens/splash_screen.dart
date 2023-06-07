import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
    );
  }
}
