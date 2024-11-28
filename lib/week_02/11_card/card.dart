import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardState();
}

class _CardState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Card Items"),
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder( itemCount: 4,itemBuilder: (context, index) => _showCards(),),
    );
  }

  _showCards(){
    return Card(
        margin: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ListTile(
              leading: Icon(Icons.music_note),
              title: Text("Unknown Artist"),
              subtitle: Text("This is the playlist"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {
                  
                }, child: const Text("Delete")
                ),
                TextButton(onPressed: () {
                  
                }, child: const Text("Undo")
                )
              ],
            )
          ],
        ),
      );
  }
}