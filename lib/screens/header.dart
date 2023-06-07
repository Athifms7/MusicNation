import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String? name;
  final IconData? icon;
  Header({super.key, required this.name, this.icon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 150,
      backgroundColor: Color.fromRGBO(1, 7, 29, 1.0),
      title: Text('$name'),
      actions: [IconButton(onPressed: () {}, icon: Icon(icon))],
    );
  }
}
