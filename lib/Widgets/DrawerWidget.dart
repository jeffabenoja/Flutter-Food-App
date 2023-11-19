import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key}); // Not exist

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Original no cost
        children: const [
          DrawerHeader(
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

          // List Tile

          ListTile(
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

          ListTile(
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

          ListTile(
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

          ListTile(
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

          ListTile(
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

          ListTile(
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
        ],
      ),
    );
  }
}
