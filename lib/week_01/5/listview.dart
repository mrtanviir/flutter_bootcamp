import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Container(
            height: 1,
            color: Colors.grey,
          );
        },
        itemCount: 50,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            ),
            title: const Text("Title"),
            subtitle: const Text("Sub-title"),
            trailing: const Icon(Icons.add_ic_call_outlined),
          );
        },
      ),
    );
  }
}
