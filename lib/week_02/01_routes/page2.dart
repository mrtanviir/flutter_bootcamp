import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: GestureDetector(onTap: () => Navigator.pop(context), child: const Icon(Icons.arrow_back)) ,
        title: const Text("Page2"),
      ),
      body: const Center(
        child: Text("Page2"),
      ),
    );
  }
}