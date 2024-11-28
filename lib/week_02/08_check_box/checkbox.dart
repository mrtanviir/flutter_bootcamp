import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _selectedBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Check Box"),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Checkbox(
              checkColor: Colors.white,
              activeColor: Colors.redAccent,
              value: _selectedBox,
              onChanged: (box) {
                setState(() {
                  _selectedBox = box!;
                });
              },
            ),
            title: const Text("Terms & Condition"),
          )
        ],
      ),
    );
  }
}
