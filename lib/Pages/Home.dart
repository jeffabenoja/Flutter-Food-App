// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tache_food/Widgets/Components/AppBarWidget.dart';
import 'package:tache_food/Widgets/Components/DrawerWidget.dart';
import 'package:tache_food/Widgets/Components/MenuWidget.dart';
import 'package:tache_food/Widgets/Components/MostOrderWidget.dart';
import 'package:tache_food/Widgets/Components/NewItemsWidget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Custom App Bar Widget
          AppBarWidget(),

          // Search
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.yellow,
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 300,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "What are your cravings right now?",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.filter_list),
                  ],
                ),
              ),
            ),
          ),

          //  Menu Section
          Padding(
            padding: EdgeInsets.only(top: 30, bottom: 15),
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    color: Color.fromARGB(255, 255, 150, 80),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Menus",
                      style: GoogleFonts.cinzelDecorative(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: MenuWidget(),
                  ),
                ],
              ),
            ),
          ),

          // Popular Section
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    color: Color.fromARGB(255, 255, 150, 80),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Popular",
                      style: GoogleFonts.cinzelDecorative(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: MostOrderWidget(),
                  ),
                ],
              ),
            ),
          ),

          // // New Items Section
          Padding(
            padding: EdgeInsets.only(top: 15, bottom: 30),
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    color: Color.fromARGB(255, 255, 150, 80),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Newest",
                      style: GoogleFonts.cinzelDecorative(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    // Newest Item
                    child: NewItemsWidget(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: DrawerWidget(),
      floatingActionButton: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ]),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "cartPage");
          },
          backgroundColor: Colors.white,
          child: Icon(
            CupertinoIcons.cart,
            size: 28,
            color: Color.fromARGB(255, 255, 97, 29),
          ),
        ),
      ),
    );
  }
}
