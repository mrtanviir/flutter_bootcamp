import 'package:flutter/material.dart';

class StackAndPosition extends StatelessWidget {
  const StackAndPosition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
             // alignment: Alignment.center,
              children: [
                Container(
                  height: 250,
                  width: 250,
                  decoration: const BoxDecoration(
                    color: Colors.redAccent
                  ),
                ),
                 Container(
                  height: 230,
                  width: 230,
                  decoration: const BoxDecoration(
                    color: Colors.blueAccent
                  ),
                ),
                 Positioned(
                  bottom: 10,
                  left: 10,
                  top: 10,
                  right: 10,
                   child: Container(
                    height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Colors.greenAccent
                    ),
                                   ),
                 ),
              ],
            ),
            Positioned(
            left: 50,
            top: 50,
              child: Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.yellowAccent
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}