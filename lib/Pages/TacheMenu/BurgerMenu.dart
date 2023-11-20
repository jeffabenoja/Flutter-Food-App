// ignore_for_file: prefer_const_constructors
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:tache_food/Widgets/Components/AppBarWidget.dart';

class BurgerMenu extends StatefulWidget {
  const BurgerMenu({Key? key}) : super(key: key);

  @override
  _BurgerMenuWidgetState createState() => _BurgerMenuWidgetState();
}

class _BurgerMenuWidgetState extends State<BurgerMenu> {
  List<bool> isFavoriteList = List.generate(5, (index) => false);

  Widget _buildBurgerItem(
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
                  "images//burger/burger${index + 1}.png", // Adjusted image path
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
                "Burgers",
                style: GoogleFonts.cinzelDecorative(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          _buildBurgerItem(
              0,
              "Double Cheese Elegance",
              "Revel in the indulgence of our Double Cheese Elegance—a symphony of flavors stacked between sesame seed buns. Caramelized onions add a sweet note to the succulent duo of beef patties, crowned with the melty allure of two cheese slices. This burger is an exquisite dance of savory and sweet, creating a decadent experience for cheese lovers.",
              "280.00"),
          _buildBurgerItem(
              1,
              "Southern Charm Chicken Burger",
              "Experience Southern charm with our Chicken Bliss Burger—a crispy fried chicken fillet nestled between soft buns. Crowned with mayo, lettuce, and cucumber, this burger is a harmonious medley of crunchy, creamy, and savory notes, offering a satisfying bite that celebrates the comforting appeal of Southern-style chicken.",
              "280.00"),
          _buildBurgerItem(
              2,
              "Bacon Bliss Burger",
              "Unleash your taste buds with our Bacon Bliss Burger—a sesame bun masterpiece featuring bacon, a savory beef patty, and melty cheese. Enhanced by flavored mayo and crisp cucumber, every bite is a fusion of smoky, savory, and creamy indulgence. It's not just a burger; it's a Bacon Bliss sensation.",
              "210.00"),
          _buildBurgerItem(
              3,
              "TLC Double Delight Burger",
              "Treat your taste buds to the TLC Double Delight Burger—a vibrant creation with two beef patties, tomato, lettuce, and onion. The bun, adorned with a burst of colored mayo, adds a playful touch to the classic combination. Each bite is a flavor explosion, a feast for the eyes and the palate, giving you a little extra tender loving care with every savory mouthful.",
              "230.00"),
          _buildBurgerItem(
              4,
              "Classic Double Cheeseburger",
              "Dive into nostalgia with our Classic Double Cheeseburger—a sesame bun delight boasting two beef patties, mayo-ketchup harmony, and the creamy allure of two cheese slices. Topped with crisp lettuce and pickles, this burger is a timeless ode to the perfect balance of savory, tangy, and cheesy goodness.",
              "200.00"),
        ],
      ),
    );
  }
}
