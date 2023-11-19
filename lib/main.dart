import 'package:flutter/material.dart';
import 'package:tache_food/Pages/Cart.dart';
import 'package:tache_food/Pages/MostPopular/MostBurger.dart';
import 'package:tache_food/Pages/MostPopular/MostChicken.dart';
import 'package:tache_food/Pages/MostPopular/MostDrinks.dart';
import 'package:tache_food/Pages/MostPopular/MostFries.dart';
import 'package:tache_food/Pages/MostPopular/MostPizza.dart';
import 'package:tache_food/Pages/MostPopular/MostSalad.dart';
import 'package:tache_food/Pages/TacheMenu/PizzaMenu.dart';
import 'Pages/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tache Food App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F3),
      ),
      routes: {
        "/": (context) => Home(),
        "cartPage": (context) => Cart(),

        // Most Order Items Page
        "mostPizzaItem": (context) => MostPizza(),
        "mostBurgerItem": (context) => MostBurger(),
        "mostChickenItem": (context) => MostChicken(),
        "mostFriesItem": (context) => MostFries(),
        "mostDrinksItem": (context) => MostDrinks(),
        "mostSaladItem": (context) => MostSalad(),

        // Tache Menu Page
        "pizzaMenu": (context) => PizzaMenu(),
      },
    );
  }
}
