import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: GestureDetector(onTap: () => Navigator.pop(context), child: const Icon(Icons.arrow_back)) ,
        title: const Text("Page1"),
      ),
      body: const Center(
        child: Text("Page1"),
      ),
    );
  }
}