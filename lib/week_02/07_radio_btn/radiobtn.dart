import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Button"),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Radio(
              value: 0,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
            title: const Text("Flutter App Development"),
          
          ),
          ListTile(
            leading: Radio(
              value: 1,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
            title: const Text("Web App Development"),
          
          ),
          ListTile(
            leading: Radio(
              value: 2,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
            title: const Text("Cyber Security Development"),
          
          ),
          
        ],
      ),
    );
  }
}
