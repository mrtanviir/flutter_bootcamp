import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool _selectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch Button"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("LIGHT"),
            Switch(
              activeColor: Colors.redAccent,
              activeTrackColor: Colors.greenAccent,
              inactiveThumbColor: Colors.blueAccent,
              inactiveTrackColor: Colors.black,
              value: _selectedSwitch,
              onChanged: (box) {
                setState(() {
                  _selectedSwitch = box;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
