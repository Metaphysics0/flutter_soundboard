import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({Key? key}) : super(key: key);

  void handleClick(String value) {
    switch (value) {
      case 'Logout':
        break;
      case 'Settings':
        break;
    }
  }

  final menuItems = const {"Dog", "Cat", "Add Your Own (Pro)"};

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Ollie"),
      actions: <Widget>[
        PopupMenuButton<String>(
          color: Colors.white,
          icon: const Icon(Icons.menu),
          onSelected: handleClick,
          itemBuilder: (BuildContext context) {
            return menuItems.map((String choice) {
              return PopupMenuItem<String>(
                textStyle: const TextStyle(color: Colors.black),
                value: choice,
                child: Text(choice),
              );
            }).toList();
          },
        ),
      ],
      // ),
    );
  }
}
