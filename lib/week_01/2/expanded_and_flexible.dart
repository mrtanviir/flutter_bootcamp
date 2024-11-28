import 'package:flutter/material.dart';

class ExpandedAndFlexible extends StatelessWidget {
  const ExpandedAndFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text("Expanded"),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                ),
                const SizedBox(width: 20,),
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(width: 20,),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
              ],
            ),
            const Text("Flexible"),
            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                ),
                const SizedBox(width: 20,),
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(width: 20,),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}