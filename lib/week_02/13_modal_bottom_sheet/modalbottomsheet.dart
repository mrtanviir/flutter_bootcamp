import 'package:flutter/material.dart';

class ModalBottomSheet extends StatefulWidget {
  const ModalBottomSheet({super.key});

  @override
  State<ModalBottomSheet> createState() => _ModalBottomSheetState();
}

class _ModalBottomSheetState extends State<ModalBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modal Bottom Sheet"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showModalContext();
            },
            child: Text("Modal Button ")),
      ),
    );
  }

  _showModalContext() {
    return showModalBottomSheet(
      // enableDrag: false,
      // isDismissible: true,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(20),
          // height: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.music_note),
                title: Text("Your name"),
                subtitle: Text("Your Positioned"),
              ),
              Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.")
            ],
          ),
        );
      },
    );
  }
}
