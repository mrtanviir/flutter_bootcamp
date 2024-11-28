import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({super.key});

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  static List<String> items = ["item 1", "item 2", "item 3"];
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DropDown Button"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          width: 250,
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(30)
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              isExpanded: true,
              value: dropdownValue,
              onChanged: (value) {
                setState(() {
                  dropdownValue = value;
                });
              },
              items: items.map((value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
