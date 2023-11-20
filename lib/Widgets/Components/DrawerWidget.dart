import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 150, 80),
              ),
              accountName: Text(
                "Tache Restaurant",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "tache.restaurant@tache.com",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/logo/tache1.png"),
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.white,
              ),
            ),
          ),

          // List Tiles with InkWell

          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
            child: ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Color.fromARGB(255, 255, 97, 29),
                size: 20,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "cartPage");
            },
            child: ListTile(
              leading: Icon(
                CupertinoIcons.cart,
                color: Color.fromARGB(255, 255, 97, 29),
                size: 20,
              ),
              title: Text(
                "Orders",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          InkWell(
            onTap: () {
              // Handle My Favorites onTap
              print("My Favorites tapped");
            },
            child: ListTile(
              leading: Icon(
                CupertinoIcons.heart_fill,
                color: Color.fromARGB(255, 255, 97, 29),
                size: 20,
              ),
              title: Text(
                "My Favorites",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          InkWell(
            onTap: () {
              // Handle Wallet onTap
              print("Wallet tapped");
            },
            child: ListTile(
              leading: Icon(
                Icons.wallet,
                color: Color.fromARGB(255, 255, 97, 29),
                size: 20,
              ),
              title: Text(
                "Wallet",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          InkWell(
            onTap: () {
              // Handle Settings onTap
              print("Settings tapped");
            },
            child: ListTile(
              leading: Icon(
                CupertinoIcons.settings,
                color: Color.fromARGB(255, 255, 97, 29),
                size: 20,
              ),
              title: Text(
                "Settings",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          InkWell(
            onTap: () {
              // Handle Exit onTap
              print("Exit tapped");
            },
            child: ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Color.fromARGB(255, 255, 97, 29),
                size: 20,
              ),
              title: Text(
                "Exit",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
