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
              "Garden Harvest Salad",
              "Immerse yourself in a symphony of freshness with our Garden Harvest Salad—a vibrant medley of crisp mixed greens, juicy tomatoes, cucumber slices, and colorful bell peppers. Topped with shredded carrots and radishes, this veggie delight offers a delightful crunch and a burst of garden-fresh flavors.",
              "180.00"),
          _buildSaladItem(
              1,
              "Grilled Chicken Bliss Salad",
              "Savor the succulence with our Grilled Chicken Bliss Salad—a hearty blend of tender grilled chicken, mixed greens, cherry tomatoes, and cucumbers. Topped with a flavorful dressing, each bite is a journey through the perfect harmony of protein-packed satisfaction and crisp, refreshing greens.",
              "210.00"),
          _buildSaladItem(
              2,
              "Caesar Crown Salad",
              "Embark on a Mediterranean journey with our Caesar Crown Salad—a harmonious combination of romaine lettuce, cherry tomatoes, croutons, and Parmesan cheese. Drizzled with our signature Caesar dressing, it captures the essence of classic Caesar salads with bold flavors and briny notes.",
              "240.00"),
          _buildSaladItem(
              3,
              "Creamy Potato Serenade Salad",
              "Indulge in comfort with our Creamy Potato Serenade Salad—a velvety blend of perfectly boiled potatoes, crisp celery, and a creamy dressing. Each bite is a comforting melody of textures and flavors, creating a classic potato salad experience that satisfies every craving.",
              "180.00"),
          _buildSaladItem(
              4,
              "Veggie Provolone Symphony Salad",
              "Elevate your veggie experience with our Veggie Provolone Symphony Salad—a colorful blend of crisp mixed greens, cherry tomatoes, cucumber slices, and bell peppers, topped with generous slices of creamy provolone cheese. It's not just a salad; it's a symphony of textures and flavors, celebrating the perfect union of fresh vegetables and indulgent cheese.",
              "220.00"),
          _buildSaladItem(
              5,
              "Mediterranean Chicken Delight Salad",
              "Escape to the Mediterranean with our Chicken Delight Salad—fresh lettuce, juicy tomatoes, grilled chicken, red onions, Kalamata olives, and crisp cucumbers. Drizzled with zesty vinaigrette, each bite is a savory journey through vibrant flavors, offering a delightful crunch and a burst of satisfaction. It's not just a salad; it's an escape on your plate, a perfect balance of freshness and protein-packed bliss.",
              "150.00"),
        ],
      ),
      drawer: DrawerWidget(),
    );
  }
}
