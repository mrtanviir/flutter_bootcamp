import 'package:flutter/material.dart';

class PopUpMenu extends StatefulWidget {
  const PopUpMenu({super.key});

  @override
  State<PopUpMenu> createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu> {
  int _selectedmenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PopUpMenu"),
        backgroundColor: Colors.amber,
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              setState(() {
                _selectedmenu = value;
              });
            },
            initialValue: _selectedmenu,
            itemBuilder: (context) {
              return [
                const PopupMenuItem(value: 0, child: Text('Item 1')),
                const PopupMenuItem(value: 1, child: Text('Item 2')),
                const PopupMenuItem(value: 2, child: Text('Item 3')),
              ];
            },
          )
        ],
      ),
    );
  }
}
