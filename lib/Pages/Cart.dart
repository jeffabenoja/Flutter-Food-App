import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tache_food/Widgets/Components/AppBarWidget.dart';
import 'package:tache_food/Widgets/BottomNavbar/CartBottomNavbar.dart';
import 'package:tache_food/Widgets/Components/DrawerWidget.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<Cart> {
  int quantityItem1;
  int initialPriceItem1;
  int quantityItem2;
  int initialPriceItem2;
  int quantityItem3;
  int initialPriceItem3;
  int quantityItem4;
  int initialPriceItem4;

  _CartItemState()
      : quantityItem1 = 2,
        initialPriceItem1 = 190,
        quantityItem2 = 2,
        initialPriceItem2 = 650,
        quantityItem3 = 1,
        initialPriceItem3 = 280,
        quantityItem4 = 1,
        initialPriceItem4 = 130;

  void _incrementQuantity(int item) {
    setState(() {
      if (item == 1) {
        quantityItem1++;
      } else if (item == 2) {
        quantityItem2++;
      } else if (item == 3) {
        quantityItem3++;
      } else if (item == 4) {
        quantityItem4++;
      }
    });
  }

  void _decrementQuantity(int item) {
    setState(() {
      if (item == 1 && quantityItem1 > 1) {
        quantityItem1--;
      } else if (item == 2 && quantityItem2 > 1) {
        quantityItem2--;
      } else if (item == 3 && quantityItem3 > 1) {
        quantityItem3--;
      } else if (item == 4 && quantityItem4 > 1) {
        quantityItem4--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Calculate total values for each item
    int totalItem1 = quantityItem1 * initialPriceItem1;
    int totalItem2 = quantityItem2 * initialPriceItem2;
    int totalItem3 = quantityItem3 * initialPriceItem3;
    int totalItem4 = quantityItem4 * initialPriceItem4;
    int grandTotalItems =
        quantityItem1 + quantityItem2 + quantityItem3 + quantityItem4;
    int grandSubTotal = totalItem1 + totalItem2 + totalItem4 + totalItem3;
    int shippingFee = 230;
    int grandTotal = grandSubTotal + shippingFee;

    return Scaffold(
      body: ListView(
        children: [
          //Original no cost
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarWidget(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      "Order List",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // Single Item
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset("images/newest/new3.png"),
                            height: 80,
                            width: 150,
                          ),

                          // ORIGINAL CONTAINER
                          Expanded(
                            child: SizedBox(
                              width: 190,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Carrot Cake",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Moist layers, spiced perfection, topped with cream cheese frosting.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "\Php $totalItem1.00",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          _buildQuantityControl(1),
                        ],
                      ),
                    ),
                  ),

                  // Single Item
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset("images/pizza/pizza2.png"),
                            height: 80,
                            width: 150,
                          ),

                          // ORIGINAL CONTAINER
                          Expanded(
                            child: SizedBox(
                              width: 190,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Quattro Formaggi",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "A cheese lover's delight.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "\Php $totalItem2.00",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          _buildQuantityControl(2),
                        ],
                      ),
                    ),
                  ),

                  // Single Item
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset("images/newest/new1.png"),
                            height: 80,
                            width: 150,
                          ),

                          // ORIGINAL CONTAINER No Expanded
                          Expanded(
                            child: SizedBox(
                              width: 190,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Garganelli Alfredo",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Creamy pasta delight with twisted tubes in Alfredo sauce.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "\Php $totalItem3.00",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          _buildQuantityControl(3)
                        ],
                      ),
                    ),
                  ),

                  // Single Item
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset("images/drinks/drinks1.png"),
                            height: 80,
                            width: 150,
                          ),

                          // ORIGINAL NO EXPANDED
                          Expanded(
                            child: SizedBox(
                              width: 190,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Classic Cola",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Effervescent nostalgia, the timeless and satisfying taste of fizzy cola.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "\Php $totalItem4.00",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                  // Padding(padding: EdgeInsets.only(bottom: 5))
                                ],
                              ),
                            ),
                          ),

                          _buildQuantityControl(4)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 30,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Items:",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "$grandTotalItems",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Sub-Total:",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "$grandSubTotal.00",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Shipping Fee:",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "$shippingFee.00",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total Charge:",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  // "\Php 2,970.00",
                                  // grandTotal.toString(),
                                  "\Php $grandTotal",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: DrawerWidget(),
      bottomNavigationBar: CartBottomNavbar(
          grandSubTotal: grandSubTotal, grandTotal: grandTotal),
    );
  }

  Widget _buildQuantityControl(int item) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 15,
      ),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => _decrementQuantity(item),
                child: Icon(
                  CupertinoIcons.minus,
                  color: Colors.white,
                ),
              ),
              Text(
                item == 1
                    ? quantityItem1.toString()
                    : item == 2
                        ? quantityItem2.toString()
                        : item == 3
                            ? quantityItem3.toString()
                            : quantityItem4.toString(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () => _incrementQuantity(item),
                child: Icon(
                  CupertinoIcons.plus,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
