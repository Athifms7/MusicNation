import 'package:flutter/material.dart';
import 'package:musicnation/screens/home/home_screen.dart';
import 'package:musicnation/screens/splash_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'DenkOne'),
      // home: SplashScreen(),
      home: HomePage(),
    );
  }
}
