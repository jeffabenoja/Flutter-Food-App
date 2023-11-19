// ignore_for_file: prefer_const_constructors
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 5,
        ),
        child: Row(
          children: [
            //Single Item
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "pizzaMenu");
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "images/pizza/pizza1.png",
                        width: 90,
                        height: 90,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Pizzas",
                        style: GoogleFonts.cinzelDecorative(
                          fontSize: 16,
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
                horizontal: 10,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "burgerMenu");
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "images/burger/burger1.png",
                        width: 90,
                        height: 90,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Burgers",
                        style: GoogleFonts.cinzelDecorative(
                          fontSize: 16,
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
                horizontal: 10,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "saladMenu");
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "images/newest/new69.png",
                        width: 90,
                        height: 90,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Salads",
                        style: GoogleFonts.cinzelDecorative(
                          fontSize: 16,
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
                horizontal: 10,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "friesMenu");
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "images/fries/fries1.png",
                        width: 90,
                        height: 90,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Fries",
                        style: GoogleFonts.cinzelDecorative(
                          fontSize: 16,
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
                horizontal: 10,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "drinkMenu");
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "images/drinks/drinks1.png",
                        width: 90,
                        height: 90,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Drinks",
                        style: GoogleFonts.cinzelDecorative(
                          fontSize: 16,
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
                horizontal: 10,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "cakeMenu");
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "images/newest/new3.png",
                        width: 90,
                        height: 90,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Cakes",
                        style: GoogleFonts.cinzelDecorative(
                          fontSize: 16,
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
                horizontal: 10,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "chickenMenu");
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "images/chicken/chicken2.png",
                        width: 90,
                        height: 90,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Chicken",
                        style: GoogleFonts.cinzelDecorative(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Next Component
          ],
        ),
      ),
    );
  }
}
