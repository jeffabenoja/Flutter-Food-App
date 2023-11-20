import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:tache_food/Widgets/Components/AppBarWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class CakeMenu extends StatefulWidget {
  const CakeMenu({Key? key}) : super(key: key);

  @override
  _CakeMenuWidgetState createState() => _CakeMenuWidgetState();
}

class _CakeMenuWidgetState extends State<CakeMenu> {
  List<bool> isFavoriteList = List.generate(5, (index) => false);

  Widget _buildCakeItem(
      int index, String name, String description, String price) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Container(
        width: double.infinity,
        height: 150,
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
            InkWell(
              onTap: () {
                // Navigator.pushNamed(context, "itemPage");
              },
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "images//newcake/cake${index + 1}.png", // Adjusted image path
                  height: 120,
                  width: 150,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 190,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "${name}",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${description}",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      RatingBar.builder(
                        initialRating: 4,
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
                        "\PHP ${price}",
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
                          isFavoriteList[index] = !isFavoriteList[index];
                        });
                      },
                      child: Icon(
                        isFavoriteList[index]
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarWidget(),
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 10,
            ),
            child: Center(
              child: Text(
                "Cakes",
                style: GoogleFonts.cinzelDecorative(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          _buildCakeItem(
              0,
              "Carrot Bliss Cake",
              "Indulge in the sublime delight of our Carrot Bliss Cake—a culinary masterpiece that seamlessly blends wholesome ingredients into a symphony of flavors. Each decadent slice is a celebration of moistness, warmth, and a harmonious marriage of sweet and spiced notes.",
              "190.00"),
          _buildCakeItem(
              1,
              "Chocolate Strawberry Symphony Cake",
              "Satisfy your sweet cravings with our Chocolate Strawberry Symphony Cake—a rich chocolate indulgence adorned with luscious strawberries. Every bite is a harmonious blend of velvety cocoa and juicy berries, creating a delectable dance of flavors.",
              "180.00"),
          _buildCakeItem(
              2,
              "Blueberry Dream Cheesecake",
              "Dive into a world of flavor with our Blueberry Dream Cheesecake—a creamy indulgence that combines the lusciousness of cheesecake with the burst of sweet, tangy blueberries. Each forkful is a journey through layers of velvety richness and fruity bliss.",
              "160.00"),
          _buildCakeItem(
              3,
              "Mango Tango Cheesecake",
              "Experience tropical heaven with our Mango Tango Cheesecake—a velvety delight that marries the creamy allure of cheesecake with the exotic sweetness of ripe mangoes. Each bite is a taste of paradise, a mango-infused escape for your palate.",
              "210.00"),
          _buildCakeItem(
              4,
              "Strawberry Serenade Shortcake",
              "Fall in love with our Strawberry Serenade Shortcake—a delicate ensemble of fluffy cake, fresh strawberries, and billows of whipped cream. This classic treat is a sweet serenade that harmonizes lightness and lusciousness in every scrumptious bite.",
              "125.00"),
        ],
      ),
    );
  }
}
