// ignore_for_file: prefer_const_constructors

import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tache_food/Widgets/Components/AppBarWidget.dart';
import 'package:tache_food/Widgets/BottomNavbar/ItemBottomNavbar.dart';
import 'package:tache_food/Widgets/Components/DrawerWidget.dart';

class ThirdNewItem extends StatefulWidget {
  const ThirdNewItem({Key? key}) : super(key: key);

  @override
  _ThirdNewItemState createState() => _ThirdNewItemState();
}

class _ThirdNewItemState extends State<ThirdNewItem> {
  int quantityItem1;
  int initialPriceItem1;

  _ThirdNewItemState()
      : quantityItem1 = 1,
        initialPriceItem1 = 190;

  void _incrementQuantity(int item) {
    setState(() {
      if (item == 1) {
        quantityItem1++;
      }
    });
  }

  void _decrementQuantity(int item) {
    setState(() {
      if (item == 1 && quantityItem1 > 1) {
        quantityItem1--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    int totalItem1 = quantityItem1 * initialPriceItem1;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 5),
        child: ListView(
          children: [
            AppBarWidget(),
            Padding(
              padding: EdgeInsets.all(16),
              child: Image.asset(
                "images/newest/new3.png",
                height: 300,
                width: double.infinity,
              ),
            ),
            Arc(
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              height: 30,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 60,
                          bottom: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RatingBar.builder(
                              initialRating: 5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 18,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, _) =>
                                  Icon(Icons.star, color: Colors.red),
                              onRatingUpdate: (index) {},
                            ),
                            Text(
                              "\PHP $totalItem1.00",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                          bottom: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Carrot Cake",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Container(
                                width: 90,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () => _decrementQuantity(1),
                                      child: Icon(
                                        CupertinoIcons.minus,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      quantityItem1.toString(),
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    GestureDetector(
                                      onTap: () => _incrementQuantity(1),
                                      child: Icon(
                                        CupertinoIcons.plus,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Text(
                          "A moist and spiced dessert delight, featuring layers of tender carrot-infused cake crowned with velvety cream cheese frosting, embodying a harmonious blend of sweetness and warmth.",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Delivery Time:",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Icon(
                                    CupertinoIcons.clock,
                                    size: 16,
                                    color: Colors.red,
                                  ),
                                ),
                                Text(
                                  "10 Minutes",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ItemBottomNavbar(
        totalItem1: totalItem1,
      ),
          drawer: DrawerWidget(),
    );
  }
}
