import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';

class SnackToast extends StatefulWidget {
  const SnackToast({super.key});

  @override
  State<SnackToast> createState() => _SnackToastState();
}

class _SnackToastState extends State<SnackToast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBar and Toast"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              //Toast
              // Fluttertoast.showToast(
              //   msg: "Hello I am toast",
              //   gravity: ToastGravity.BOTTOM,
              //   backgroundColor: Colors.redAccent,
              //   fontSize: 16,
              //   toastLength: Toast.LENGTH_SHORT,
              //   textColor: Colors.white,
              //   );
              

              //SnackBar
              ScaffoldMessenger.of(context)
                   .showSnackBar(const SnackBar(content: Text("Hello I am snackbar")));

               await Future.delayed(const Duration(seconds: 2));
               ScaffoldMessenger.of(context).hideCurrentSnackBar();
            },
            child: const Text("Show SnackBar and Toast")),
      ),
    );
  }
}
