// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/rendering.dart';

class NewItemsWidget extends StatefulWidget {
  @override
  _NewItemsWidgetState createState() => _NewItemsWidgetState();
}

class _NewItemsWidgetState extends State<NewItemsWidget> {
  List<bool> isFavoriteList = List.generate(7, (index) => false);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            // Single Item
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: double.infinity, // Original Size 380
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3)),
                    ]),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "firstNewItem");
                      },
                      child: Container(
                        // width: 230,
                        alignment: Alignment.center,
                        child: Image.asset(
                          "images//newest/new1.png",
                          height: 120, // Original size 120
                          width: 150, // Original size 150
                        ),
                      ),
                    ),
                    Expanded(
                      // flex: 2,
                      child: Container(
                        // color: Colors.pink,
                        width: 190,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Garganelli Alfredo",
                                style: TextStyle(
                                  fontSize: 17,
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
                              RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 18,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4),
                                itemBuilder: (context, _) =>
                                    Icon(Icons.star, color: Colors.red),
                                onRatingUpdate: (index) {},
                              ),
                              Text(
                                "\PHP 280.00",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                // Handle the tap event and update the isFavorite variable
                                setState(() {
                                  isFavoriteList[0] = !isFavoriteList[0];
                                });
                              },
                              child: Icon(
                                isFavoriteList[0]
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.red,
                                size: 18,
                              ),
                            ),
                          ),
                          Icon(
                            CupertinoIcons.cart,
                            color: Colors.red,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: double.infinity, // Original Size 380
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3)),
                    ]),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "secondNewItem");
                      },
                      child: Container(
                        // width: 230,
                        alignment: Alignment.center,
                        child: Image.asset(
                          "images//newest/new2.png",
                          height: 120, // Original size 120
                          width: 150, // Original size 150
                        ),
                      ),
                    ),
                    Expanded(
                      // flex: 2,
                      child: Container(
                        // color: Colors.pink,
                        width: 190,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Meatballs Spag",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Succulent meatballs on classic spaghetti in savory tomato sauce.",
                                style: TextStyle(
                                  fontSize: 12,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                              RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 18,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4),
                                itemBuilder: (context, _) =>
                                    Icon(Icons.star, color: Colors.red),
                                onRatingUpdate: (index) {},
                              ),
                              Text(
                                "\PHP 260.00",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                // Handle the tap event and update the isFavorite variable
                                setState(() {
                                  isFavoriteList[1] = !isFavoriteList[1];
                                });
                              },
                              child: Icon(
                                isFavoriteList[1]
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.red,
                                size: 18,
                              ),
                            ),
                          ),
                          Icon(
                            CupertinoIcons.cart,
                            color: Colors.red,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: double.infinity, // Original Size 380
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3)),
                    ]),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "thirdNewItem");
                      },
                      child: Container(
                        // width: 230,
                        alignment: Alignment.center,
                        child: Image.asset(
                          "images//newest/new3.png",
                          height: 120, // Original size 120
                          width: 150, // Original size 150
                        ),
                      ),
                    ),
                    Expanded(
                      // flex: 2,
                      child: Container(
                        // color: Colors.pink,
                        width: 190,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Carrot Cake",
                                style: TextStyle(
                                  fontSize: 17,
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
                              RatingBar.builder(
                                initialRating: 5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 18,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4),
                                itemBuilder: (context, _) =>
                                    Icon(Icons.star, color: Colors.red),
                                onRatingUpdate: (index) {},
                              ),
                              Text(
                                "\PHP 190.00",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                // Handle the tap event and update the isFavorite variable
                                setState(() {
                                  isFavoriteList[2] = !isFavoriteList[2];
                                });
                              },
                              child: Icon(
                                isFavoriteList[2]
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.red,
                                size: 18,
                              ),
                            ),
                          ),
                          Icon(
                            CupertinoIcons.cart,
                            color: Colors.red,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: double.infinity, // Original Size 380
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3)),
                    ]),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "fourthNewItem");
                      },
                      child: Container(
                        // width: 230,
                        alignment: Alignment.center,
                        child: Image.asset(
                          "images//newest/new5.png",
                          height: 120, // Original size 120
                          width: 150, // Original size 150
                        ),
                      ),
                    ),
                    Expanded(
                      // flex: 2,
                      child: Container(
                        // color: Colors.pink,
                        width: 190,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Koba Salad",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Fresh greens, grilled chicken, avocado, tomatoes, and a zesty vinaigrette delight.",
                                style: TextStyle(
                                  fontSize: 12,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                              RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 18,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4),
                                itemBuilder: (context, _) =>
                                    Icon(Icons.star, color: Colors.red),
                                onRatingUpdate: (index) {},
                              ),
                              Text(
                                "\PHP 150.00",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                // Handle the tap event and update the isFavorite variable
                                setState(() {
                                  isFavoriteList[3] = !isFavoriteList[3];
                                });
                              },
                              child: Icon(
                                isFavoriteList[3]
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.red,
                                size: 18,
                              ),
                            ),
                          ),
                          Icon(
                            CupertinoIcons.cart,
                            color: Colors.red,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: double.infinity, // Original Size 380
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3)),
                    ]),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "fifthNewItem");
                      },
                      child: Container(
                        // width: 230,
                        alignment: Alignment.center,
                        child: Image.asset(
                          "images//newest/new4.png",
                          height: 120, // Original size 120
                          width: 150, // Original size 150
                        ),
                      ),
                    ),
                    Expanded(
                      // flex: 2,
                      child: Container(
                        // color: Colors.pink,
                        width: 190,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Choco-berry Cake",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Decadent chocolate layers infused with bursts of berry compote.",
                                style: TextStyle(
                                  fontSize: 12,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                              RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 18,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4),
                                itemBuilder: (context, _) =>
                                    Icon(Icons.star, color: Colors.red),
                                onRatingUpdate: (index) {},
                              ),
                              Text(
                                "\PHP 180.00",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                // Handle the tap event and update the isFavorite variable
                                setState(() {
                                  isFavoriteList[4] = !isFavoriteList[4];
                                });
                              },
                              child: Icon(
                                isFavoriteList[4]
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.red,
                                size: 18,
                              ),
                            ),
                          ),
                          Icon(
                            CupertinoIcons.cart,
                            color: Colors.red,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: double.infinity, // Original Size 380
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3)),
                    ]),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "sixthNewItem");
                      },
                      child: Container(
                        // width: 230,
                        alignment: Alignment.center,
                        child: Image.asset(
                          "images//newest/new6.png",
                          height: 120, // Original size 120
                          width: 150, // Original size 150
                        ),
                      ),
                    ),
                    Expanded(
                      // flex: 2,
                      child: Container(
                        // color: Colors.pink,
                        width: 190,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Ceasar Salad",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Romaine, croutons, Parmesan, Caesar dressing—a classic, crisp delight.",
                                style: TextStyle(
                                  fontSize: 12,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                              RatingBar.builder(
                                initialRating: 5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 18,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4),
                                itemBuilder: (context, _) =>
                                    Icon(Icons.star, color: Colors.red),
                                onRatingUpdate: (index) {},
                              ),
                              Text(
                                "\PHP 150.00",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                // Handle the tap event and update the isFavorite variable
                                setState(() {
                                  isFavoriteList[5] = !isFavoriteList[5];
                                });
                              },
                              child: Icon(
                                isFavoriteList[5]
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.red,
                                size: 18,
                              ),
                            ),
                          ),
                          Icon(
                            CupertinoIcons.cart,
                            color: Colors.red,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: double.infinity, // Original Size 380
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3)),
                    ]),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "seventhNewItem");
                      },
                      child: Container(
                        // width: 230,
                        alignment: Alignment.center,
                        child: Image.asset(
                          "images//drinks/drinks1.png",
                          height: 120, // Original size 120
                          width: 150, // Original size 150
                        ),
                      ),
                    ),
                    Expanded(
                      // flex: 2,
                      child: Container(
                        // color: Colors.pink,
                        width: 190,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Lemon Iced Tea",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Brisk black tea meets fresh lemon over ice—revitalizing citrus.",
                                style: TextStyle(
                                  fontSize: 12,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                              RatingBar.builder(
                                initialRating: 5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 18,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4),
                                itemBuilder: (context, _) =>
                                    Icon(Icons.star, color: Colors.red),
                                onRatingUpdate: (index) {},
                              ),
                              Text(
                                "\PHP 130.00",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                // Handle the tap event and update the isFavorite variable
                                setState(() {
                                  isFavoriteList[6] = !isFavoriteList[6];
                                });
                              },
                              child: Icon(
                                isFavoriteList[6]
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.red,
                                size: 18,
                              ),
                            ),
                          ),
                          Icon(
                            CupertinoIcons.cart,
                            color: Colors.red,
                            size: 18,
                          )
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
    );
  }
}
