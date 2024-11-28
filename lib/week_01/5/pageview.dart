import 'package:flutter/material.dart';

class Pageview extends StatefulWidget {
  const Pageview({super.key});

  @override
  State<Pageview> createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pageview"),
        actions: [
          IconButton(
              onPressed: () {
                _pageController.previousPage(
                    duration: const Duration(milliseconds: 3000),
                    curve: Curves.easeInBack);
              },
              icon: const Icon(Icons.arrow_back)),
          IconButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: const Duration(microseconds: 3000),
                    curve: Curves.bounceInOut);
              },
              icon: const Icon(Icons.arrow_forward))
        ],
      ),
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            color: Colors.redAccent,
            child: const Center(child: Text("1")),
          ),
          Container(
            color: Colors.blueAccent,
            child: const Center(child: Text("2")),
          ),
          Container(
            color: Colors.greenAccent,
            child: const Center(child: Text("3")),
          ),
        ],
      ),
    );
  }
}
