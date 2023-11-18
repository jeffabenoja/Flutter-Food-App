// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tache_food/Widgets/AppBarWidget.dart';
import 'package:tache_food/Widgets/DrawerWidget.dart';
import 'package:tache_food/Widgets/MenuWidget.dart';
import 'package:tache_food/Widgets/MostOrderWidget.dart';
import 'package:tache_food/Widgets/NewItemsWidget.dart';

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
                              hintText: "What are your cravings now?",
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

          // Tache Menu Section
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    color: Color.fromARGB(255, 255, 97, 29),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Tache Menu",
                      style: GoogleFonts.pacifico(
                        fontSize: 35,
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
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    color: Color.fromARGB(255, 255, 97, 29),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Popular",
                      style: GoogleFonts.pacifico(
                        fontSize: 25,
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
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    color: Color.fromARGB(255, 255, 97, 29),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Newest",
                      style: GoogleFonts.pacifico(
                        fontSize: 25,
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

        // Original remove the other one if there any error
        // child: FloatingActionButton(
        //   onPressed: () {},
        //   child: Icon(
        //     CupertinoIcons.cart,
        //     size: 28,
        //     color: Color.fromARGB(255, 255, 97, 29),
        //   ),
        //   backgroundColor: Colors.white,
        // ),
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
