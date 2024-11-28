import 'package:flutter/material.dart';

class Drawerr extends StatefulWidget {
  const Drawerr({super.key});

  @override
  State<Drawerr> createState() => _DrawerState();
}

class _DrawerState extends State<Drawerr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 250,
        child: Container(
          padding: const EdgeInsets.only(left: 10),
          color: Colors.amber,
          child: ListView(
            children: [
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "assets/image.png",
                          fit: BoxFit.cover,
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Mrtanviir",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
              const Divider(
                color: Colors.white,
                height: 5,
              ),
              _listtile(
                icon: Icons.account_box,
                title: "Profile",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ));
                },
              ),
              _listtile(
                icon: Icons.notifications_on,
                title: "Notification",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotificationPage(),
                      ));
                },
              ),
              _listtile(
                icon: Icons.shop,
                title: "Shop",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ShopPage(),
                      ));
                },
              ),
              const Divider(color: Colors.white, height: 10,),
              _listtile(
                icon: Icons.balance,
                title: "Balance",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BalancePage(),
                      ));
                },
              ),
              _listtile(
                icon: Icons.settings,
                title: "Settings",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SettingPage(),
                      ));
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "Drawer",
        ),
        backgroundColor: Colors.amber,
      ),
      body: const Center(child: Text("Drawer")),
    );
  }

  _listtile(
      {required IconData icon,
      required String title,
      required VoidCallback onTap}) {
    return ListTile(
      onTap: onTap,
      iconColor: Colors.white,
      leading: Icon(
        icon,
        size: 25,
      ),
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
         backgroundColor: Colors.amber,
      ),
      body: const Center(child: Text("Profile")),
    );
  }
}

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting Page"),
         backgroundColor: Colors.amber,
      ),
      body: const Center(child: Text("Setting")),
    );
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification Page"),
         backgroundColor: Colors.amber,
      ),
      body: const Center(child: Text("Notification")),
    );
  }
}

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop Page"),
         backgroundColor: Colors.amber,
      ),
      body: const Center(child: Text("Shop")),
    );
  }
}

class BalancePage extends StatelessWidget {
  const BalancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Balance Page"),
        backgroundColor: Colors.amber,
      ),
      body: const Center(child: Text("Balance")),
    );
  }
}
