import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: GestureDetector(onTap: () => Navigator.pop(context), child: const Icon(Icons.arrow_back)) ,
        title: const Text("Page3"),
      ),
      body: const Center(
        child: Text("Page3"),
      ),
    );
  }
}