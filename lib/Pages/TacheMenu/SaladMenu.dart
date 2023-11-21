import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:tache_food/Widgets/Components/AppBarWidget.dart';
import 'package:tache_food/Widgets/Components/DrawerWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class SaladMenu extends StatefulWidget {
  const SaladMenu({Key? key}) : super(key: key);

  @override
  _SaladMenuWidgetState createState() => _SaladMenuWidgetState();
}

class _SaladMenuWidgetState extends State<SaladMenu> {
  List<bool> isFavoriteList = List.generate(6, (index) => false);

  Widget _buildSaladItem(
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
                  "images/salad/salad${index + 1}.png", // Adjusted image path
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
                "Salads",
                style: GoogleFonts.cinzelDecorative(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          _buildSaladItem(
              0,
              "Garden Salad",
              "Fresh greens, vibrant veggies, and zesty dressing for a crisp, refreshing experience.",
              "180.00"),
          _buildSaladItem(
              1,
              "Chicken Salad",
              "Grilled chicken, mixed greens, and assorted veggies, tossed in a flavorful dressing.",
              "210.00"),
          _buildSaladItem(
              2,
              "Caesar Salad",
              "Crisp romaine, parmesan, croutons, and Caesar dressing for a timeless, savory delight.",
              "240.00"),
          _buildSaladItem(
              3,
              "Potato Salad",
              "Creamy potatoes, crunchy veggies, and a tangy dressing create a comforting classic.",
              "180.00"),
          _buildSaladItem(
              4,
              "Veggie Provolone",
              "Colorful medley of fresh vegetables and provolone cheese for a wholesome sensation.",
              "220.00"),
          _buildSaladItem(
              5,
              "Mediterranean",
              "A flavorful journey with olives, feta, tomatoes, and crisp greens in herb-infused dressing.",
              "150.00"),
        ],
      ),
      drawer: DrawerWidget(),
    );
  }
}
