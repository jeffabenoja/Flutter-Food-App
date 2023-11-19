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
                                "Tache Special Garganelli Alfredo",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Indulge in a luxurious and creamy dining experience with Garganelli Alfredo. This pasta dish combines the delightful texture of garganelli—a tubular pasta with ridges—with a velvety Alfredo sauce that's rich in flavor and elegance.",
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
                                "Tache ala Meatballs Spaghetti",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Indulge in a classic Italian comfort dish with Meatballs Spaghetti. This iconic combination features perfectly cooked spaghetti noodles generously coated in a rich and savory tomato sauce, adorned with hearty, flavorful meatballs.",
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
                                "Tache Carrot Cake",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Indulge your senses in the sublime delight of our signature Carrot Cake—a culinary masterpiece that seamlessly blends wholesome ingredients into a symphony of flavors and textures.",
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
                                "Koba Crunch Salad",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "A timeless favorite, the Classic Garden Salad is a vibrant medley of crisp mixed greens, juicy tomatoes, cucumber slices, and colorful bell peppers. ",
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
                                "Tache Red Velvet Chocolate Cake",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Our Red Velvet Chocolate Cake is more than a dessert—it's an exquisite symphony of flavors, a visual masterpiece, and a decadent treat that beckons those with a penchant for the extraordinary.",
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
                                "Embark on a Mediterranean journey with our Ceasar Salad, featuring a harmonious combination of tomatoes, cucumbers, red onions, Kalamata olives, and crumbled feta cheese.",
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
                                "Tache Lemon Bliss Iced Tea",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Quench your thirst with a burst of citrusy refreshment! Our Lemon Bliss Iced Tea is a harmonious blend of premium tea leaves, chilled to perfection and infused with the bright essence of sun-kissed lemons.",
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
