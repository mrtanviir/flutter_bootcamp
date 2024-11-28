import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(10),
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.red
              ),
              child: const Text("Container 01"),            
            ),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.green
              ),            
            ),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.blue
              ),            
            )
          ],
        ),
      ),
    );
  }
}