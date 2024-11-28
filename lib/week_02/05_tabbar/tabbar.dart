import 'package:flutter/material.dart';

// class Tabbar extends StatefulWidget {
//   const Tabbar({super.key});

//   @override
//   State<Tabbar> createState() => _TabbarState();
// }

// class _TabbarState extends State<Tabbar> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       initialIndex: 0,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("TabBar"),
//           backgroundColor: Colors.amber,
//           bottom: TabBar(tabs:
//           [
//             Tab(text: "Cloud", icon: Icon(Icons.cloud),),
//             Tab(text: "Terrain", icon: Icon(Icons.terrain),),
//             Tab(text: "Wave", icon: Icon(Icons.waves),),

//           ]
//           ),

//         ),
//         body: TabBarView(
//           children: [
//             Center(
//               child: Text("Tab-1",style: TextStyle(
//                 fontSize: 32
//               ),),
//             ),
//             Center(
//               child: Text("Tab-2",style: TextStyle(
//                 fontSize: 32
//               ),),
//             ),
//             Center(
//               child: Text("Tab-3",style: TextStyle(
//                 fontSize: 32
//               ),),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> with TickerProviderStateMixin {

  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TabBar"),
        backgroundColor: Colors.amber,
        bottom: TabBar(
          controller: _controller,
          tabs: const [
          Tab(
            text: "Cloud",
            icon: Icon(Icons.cloud),
          ),
          Tab(
            text: "Terrain",
            icon: Icon(Icons.terrain),
          ),
          Tab(
            text: "Wave",
            icon: Icon(Icons.waves),
          ),
        ]),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [
          Center(
            child: Text(
              "Tab-1",
              style: TextStyle(fontSize: 32),
            ),
          ),
          Center(
            child: Text(
              "Tab-2",
              style: TextStyle(fontSize: 32),
            ),
          ),
          Center(
            child: Text(
              "Tab-3",
              style: TextStyle(fontSize: 32),
            ),
          ),
        ],
      ),
    );
  }
}
