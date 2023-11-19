import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:tache_food/Widgets/Components/AppBarWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class PizzaMenu extends StatefulWidget {
  const PizzaMenu({Key? key}) : super(key: key);

  @override
  _PizzaMenuWidgetState createState() => _PizzaMenuWidgetState();
}

class _PizzaMenuWidgetState extends State<PizzaMenu> {
  List<bool> isFavoriteList = List.generate(5, (index) => false);

  Widget _buildPizzaItem(
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
                  "images//pizza/pizza${index + 1}.png", // Adjusted image path
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
                "Pizzas",
                style: GoogleFonts.cinzelDecorative(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          _buildPizzaItem(
              0,
              "Combo Carnival Pizza",
              "Embark on a flavor adventure with our Combo Carnival Pizza—a tantalizing medley of savory meats, fresh veggies, and a symphony of cheeses. Each slice is a celebration of variety, from the robust pepperoni to the garden-fresh crunch of bell peppers. It's not just a pizza; it's a party on your palate, an explosion of diverse tastes that will leave you craving more.",
              "680.00"),
          _buildPizzaItem(
              1,
              "Tache Quattro Formaggi (Four Cheese Pizza)",
              "Indulge in the decadence of Tache Quattro Formaggi— a symphony of four distinct cheeses, including mozzarella, Parmesan, Gorgonzola, and fontina. Each bite delivers a rich and creamy experience, from the mild and melty mozzarella to the sharp and tangy Gorgonzola. A pizza lover's delight, it's a harmonious blend that elevates cheesy indulgence to new heights, creating a truly unforgettable flavor fusion.",
              "650.00"),
          _buildPizzaItem(
              2,
              "Classic Margherita Elegance",
              "Savor the simplicity of perfection with our Classic Margherita Elegance. Immerse yourself in the purest flavors as luscious tomato sauce, fresh mozzarella, and fragrant basil come together on a golden, thin crust. Each bite is a culinary ode to simplicity, allowing the quality of the ingredients to shine. Elevate your pizza experience with a touch of sophistication.",
              "580.00"),
          _buildPizzaItem(
              3,
              "Pepperoni Passion Pizza",
              "Ignite your taste buds with our Pepperoni Passion Pizza—a fiery feast of flavor that pays homage to the iconic pepperoni. Savory, spicy, and generously piled, each slice is a perfect balance of zesty tomato sauce, gooey mozzarella, and the bold kick of pepperoni. It's not just a pizza; it's a passionate embrace of the classic, ensuring every bite is a symphony of spice and satisfaction.",
              "520.00"),
          // Add more pizza items as needed...
        ],
      ),
    );
  }
}
