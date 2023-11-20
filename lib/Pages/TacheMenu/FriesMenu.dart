import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:tache_food/Widgets/Components/AppBarWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class FriesMenu extends StatefulWidget {
  const FriesMenu({Key? key}) : super(key: key);

  @override
  _FriesMenuWidgetState createState() => _FriesMenuWidgetState();
}

class _FriesMenuWidgetState extends State<FriesMenu> {
  List<bool> isFavoriteList = List.generate(6, (index) => false);

  Widget _buildFriesItem(
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
                  "images/fries/fries${index + 1}.png", // Adjusted image path
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
                "Fries",
                style: GoogleFonts.cinzelDecorative(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          _buildFriesItem(
              0,
              "Overloaded Fries",
              "Dive into a carnival of flavors with our Overloaded Fiesta Fries—a decadent delight that takes traditional fries to new heights. Piled high with a gooey blend of melted cheeses and a symphony of hearty meats, each fry is a journey through indulgence. It's not just a side dish; it's a festive celebration on your palate.",
              "160.00"),
          _buildFriesItem(
              1,
              "Nacho Nirvana Fries",
              "Experience the ultimate snack sensation with our Nacho Nirvana Fries—a crunchy symphony of seasoned fries crowned with a fiesta of zesty nacho cheese, jalapeños, and savory toppings. Each bite is a journey through layers of flavor, creating a nacho-inspired masterpiece that transforms ordinary fries into a snack-worthy sensation.",
              "180.00"),
          _buildFriesItem(
              2,
              "Cheesy Bacon Bliss Fries",
              "Indulge in a symphony of savory delights with our Cheesy Bacon Bliss Fries—a heavenly combination of crisp fries, smoky bacon, and a gooey blanket of melted cheeses. This irresistible creation is a celebration of comfort food, ensuring each bite is a mouthwatering experience that satisfies your cravings for cheesy, bacon-infused bliss.",
              "230.00"),
          _buildFriesItem(
              3,
              "Sour Cream Serenity Fries",
              "Elevate your fry experience with our Sour Cream Serenity Fries—a cool and tangy twist on a classic. Crisp fries meet the creamy richness of sour cream, creating a harmonious balance of textures and flavors. It's not just a side; it's a refreshing journey through the perfect marriage of warm fries and cool, luscious sour cream.",
              "150.00"),
          _buildFriesItem(
              4,
              "Cheesy Symphony Fries",
              "Treat your taste buds to a Cheesy Symphony with our irresistible Cheesy Fries. Each golden fry is drenched in a rich, gooey blend of melted cheeses, creating a melody of flavors that's both comforting and indulgent. It's not just a side dish; it's a cheesy delight that turns every fry into a deliciously satisfying experience.",
              "145.00"),
        ],
      ),
    );
  }
}
