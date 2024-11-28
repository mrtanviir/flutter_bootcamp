import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class PersistentNav extends StatefulWidget {
  const PersistentNav({super.key});

  @override
  State<PersistentNav> createState() => _PersistentNavState();
}

class _PersistentNavState extends State<PersistentNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Persistent Navigation Bar"),
        backgroundColor: Colors.redAccent,
      ),
      bottomNavigationBar: PersistentTabView(
        context,
        screens: const [
          Home(),
          Order(),
          Services(),
          Location(),
          Account()
        ],
        items: [
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.home),
            title: "Home",
            activeColorPrimary: Colors.white,
            activeColorSecondary: Colors.black,
            inactiveColorPrimary: Colors.yellowAccent
            ),
            PersistentBottomNavBarItem(
            icon: const Icon(Icons.shop),
            title: "Order",
            activeColorPrimary: Colors.white,
            activeColorSecondary: Colors.black,
            inactiveColorPrimary: Colors.yellowAccent
            ),
            PersistentBottomNavBarItem(
            icon: const Icon(Icons.room_service_outlined),
            title: "Services",
            activeColorPrimary: Colors.white,
            activeColorSecondary: Colors.black,
            inactiveColorPrimary: Colors.yellowAccent
            ),
            PersistentBottomNavBarItem(
            icon: const Icon(Icons.location_on),
            title: "Location",
            activeColorPrimary: Colors.white,
            activeColorSecondary: Colors.black,
            inactiveColorPrimary: Colors.yellowAccent
            ),
            PersistentBottomNavBarItem(
            icon: const Icon(Icons.account_balance),
            title: "Account",
            activeColorPrimary: Colors.white,
            activeColorSecondary: Colors.black,
            inactiveColorPrimary: Colors.yellowAccent
            )
        ],
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10),
          colorBehindNavBar: Colors.white
        ),
        backgroundColor: Colors.grey,
        navBarStyle: NavBarStyle.style1,
        navBarHeight: 52,
        // animationSettings: NavBarAnimationSettings(
        //   navBarItemAnimation: ItemAnimationSettings(curve: Curves.linear, duration: Duration(microseconds: 2000))
        // ),
        ),
        
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Home"),),
    );
  }
}
class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Order"),),
    );
  }
}

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Services"),),
    );
  }
}

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Location"),),
    );
  }
}

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Account"),),
    );
  }
}