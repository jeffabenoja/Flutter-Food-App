import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNavbar extends StatelessWidget {
  final int totalItem1;

  const ItemBottomNavbar({Key? key, required this.totalItem1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Total:",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "\Php $totalItem1.00",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            ElevatedButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                ),
              ),
              icon: Icon(
                CupertinoIcons.cart,
                color: Colors.white,
                size: 18,
              ),
              label: Text(
                "Place To Cart",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.3,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
