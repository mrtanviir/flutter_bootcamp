import 'package:flutter/material.dart';

class AlertDialouge extends StatefulWidget {
  const AlertDialouge({super.key});

  @override
  State<AlertDialouge> createState() => _AlertDialougeState();
}

class _AlertDialougeState extends State<AlertDialouge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialouge"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Alert!!!"),
                    content: const Text("Do you want to close it?"),
                    backgroundColor: Colors.greenAccent,
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("No")),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Yes"))
                    ],
                  );
                },
              );
            },
            child: const Text("Show Alert")),
      ),
    );
  }
}
