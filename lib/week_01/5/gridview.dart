import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
  const Gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(5),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
          );
        },
      ),
    );
  }
}
