import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:tache_food/Widgets/Components/AppBarWidget.dart';
import 'package:tache_food/Widgets/Components/DrawerWidget.dart';
import 'package:google_fonts/google_fonts.dart';


class ChickenMenu extends StatefulWidget {
  const ChickenMenu({Key? key}) : super(key: key);

  @override
  _ChickenenuWidgetState createState() => _ChickenenuWidgetState();
}

class _ChickenenuWidgetState extends State<ChickenMenu> {
  List<bool> isFavoriteList = List.generate(5, (index) => false);

  Widget _buildChickenItem(
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
                  "images//chicken/chicken${index + 1}.png", // Adjusted image path
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
                "Chicken",
                style: GoogleFonts.cinzelDecorative(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          _buildChickenItem(
              0,
              "Honey Lemon Harmony Chicken",
              "Delight your taste buds with our Honey Lemon Harmony Chicken—an exquisite blend of sweet and zesty flavors. Each succulent piece is glazed to perfection, creating a symphony of taste that dances on your palate with the perfect balance of honey sweetness and citrusy freshness.",
              "220.00"),
          _buildChickenItem(
              1,
              "Soy Garlic Serenity Chicken",
              "Savor the aromatic bliss of our Soy Garlic Serenity Chicken—a savory masterpiece that elevates fried chicken to new heights. Coated in a delectable soy garlic glaze, each crispy bite is a harmonious union of umami richness and garlic-infused delight.",
              "270.00"),
          _buildChickenItem(
              2,
              "Cheesy Crispy Chicken Delight",
              "Indulge in the ultimate comfort with our Cheesy Crispy Chicken Delight—a fried chicken sensation generously coated in a golden layer of melted cheeses. This dish is a symphony of crunchy and gooey textures, offering a satisfying blend of savory and cheesy goodness.",
              "190.00"),
          _buildChickenItem(
              3,
              "Crispy Classic Fried Chicken",
              "Experience the timeless joy of our Crispy Classic Fried Chicken—a golden delight that boasts a perfectly seasoned and crunchy exterior, revealing tender, flavorful meat inside. It's not just fried chicken; it's a crispy, savory celebration that satisfies your cravings for the ultimate comfort food.",
              "240.00"),
          _buildChickenItem(
              4,
              "Yangnyeo Spice Chicken",
              "Embark on a flavorful journey with our Yangnyeo Spice Chicken—a tantalizing creation featuring a perfect blend of Korean-inspired spices. Each crispy bite is a fusion of savory and spicy notes, delivering a taste of Korea's culinary richness in every delectable piece.",
              "245.00"),
        ],
      ),
      drawer: DrawerWidget(),
    );
  }
}
