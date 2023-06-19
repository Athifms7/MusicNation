import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String? name;
  final IconData? icon;
  final Widget? className; // Optional parameter with default value of null

  Header({Key? key, required this.name, this.icon, this.className})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 150,
      backgroundColor: Color.fromRGBO(1, 7, 29, 1.0),
      title: Text('$name'),
      actions: [
        if (className !=
            null) // Conditionally render IconButton if className is not null
          IconButton(
            icon: Icon(icon),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        className!), // Use the class name as a widget
              );
            },
          ),
      ],
    );
  }
}
