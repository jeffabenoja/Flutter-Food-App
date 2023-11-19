import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:tache_food/Widgets/Components/AppBarWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class DrinksMenu extends StatefulWidget {
  const DrinksMenu({Key? key}) : super(key: key);

  @override
  _DrinksMenuWidgetState createState() => _DrinksMenuWidgetState();
}

class _DrinksMenuWidgetState extends State<DrinksMenu> {
  List<bool> isFavoriteList = List.generate(6, (index) => false);

  Widget _buildDrinksItem(
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
                  "images/drinks/drinks${index + 1}.png", // Adjusted image path
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
                "Drinks",
                style: GoogleFonts.cinzelDecorative(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          _buildDrinksItem(
              0,
              "Lemon Zest Iced Tea",
              "Quench your thirst with our Lemon Zest Iced Tea—an invigorating blend of premium tea leaves, chilled to perfection, and infused with the bright essence of sun-kissed lemons. It's a citrusy symphony that strikes the perfect balance between sweet and tart, offering a refreshing pick-me-up with every sip.",
              "130.00"),
          _buildDrinksItem(
              1,
              "Watermelon Wave Juice",
              "Ride the wave of refreshment with our Watermelon Wave Juice—a vibrant and hydrating beverage capturing the essence of summer. Sip into the sweet and cooling experience of ripe watermelon, a delicious oasis in every gulp.",
              "120.00"),
          _buildDrinksItem(
              2,
              "Tropical Pineapple Bliss",
              "Taste the tropics with our Tropical Pineapple Bliss—a luscious juice that transports you to paradise with the pure, sun-kissed flavor of ripe pineapples. Each sip is a tropical escape, offering a sweet and tangy symphony of refreshment.",
              "110.00"),
          _buildDrinksItem(
              3,
              "Tropical Pineapple Bliss",
              "Embark on a flavor journey with our Mango Tango Elixir—a golden nectar of pure mango goodness. Savor the tropical sweetness and indulge in the rich, velvety taste of ripe mangoes in every sip. It's not just a juice; it's a dance of tropical flavors on your palate.",
              "90.00"),
          _buildDrinksItem(
              4,
              "Classic Cola Quencher",
              "Satisfy your cola cravings with our Classic Cola Quencher—a timeless beverage that fizzes with nostalgia. Experience the perfect harmony of effervescence and sweetness in every bubbly sip, making it a classic choice for those who appreciate the familiar taste of a well-loved cola.",
              "75.00"),
        ],
      ),
    );
  }
}
