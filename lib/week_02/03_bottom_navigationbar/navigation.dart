import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.blueAccent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.redAccent,
        //selectedIconTheme: IconThemeData(color: Colors.white),
        selectedItemColor: Colors.white,
        selectedLabelStyle: const TextStyle(color: Colors.white),
        selectedFontSize: 18,
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedItemColor: Colors.black,
        unselectedFontSize: 16,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_repair_service), label: "Services"),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on), label: "Location"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: "Profile"),
        ],
      ),
      body: _switchOnIndex(),
    );
  }

  _switchOnIndex() {
    switch (_currentIndex) {
      case 0:
        {
          return const BottomHome();
        }
        case 1:
        {
          return const Center(
            child: Text("Service Page"),
          );
        }
        case 2:
        {
          return const Center(
            child: Text("Location Page"),
          );
        }
        case 3:
        {
          return const Center(
            child: Text("Profile Page"),
          );
        }
    }
  }
}
class BottomHome extends StatelessWidget {
  const BottomHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Bottom Navigation Home Page",style: TextStyle(
        fontSize: 32,
        
      ),)),
    );
  }
}