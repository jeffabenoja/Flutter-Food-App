import 'package:flutter/material.dart';
import 'package:tache_food/Pages/Cart.dart';
import 'package:tache_food/Pages/MostPopular/MostBurger.dart';
import 'package:tache_food/Pages/MostPopular/MostChicken.dart';
import 'package:tache_food/Pages/MostPopular/MostDrinks.dart';
import 'package:tache_food/Pages/MostPopular/MostFries.dart';
import 'package:tache_food/Pages/MostPopular/MostPizza.dart';
import 'package:tache_food/Pages/MostPopular/MostSalad.dart';
import 'package:tache_food/Pages/NewProduct/FifthNewItem.dart';
import 'package:tache_food/Pages/NewProduct/FirstNewItem.dart';
import 'package:tache_food/Pages/NewProduct/FourthNewItem.dart';
import 'package:tache_food/Pages/NewProduct/SecondNewItem.dart';
import 'package:tache_food/Pages/NewProduct/SeventhNewItem.dart';
import 'package:tache_food/Pages/NewProduct/SixthNewItem.dart';
import 'package:tache_food/Pages/NewProduct/ThirdNewItem.dart';

import 'package:tache_food/Pages/TacheMenu/BurgerMenu.dart';
import 'package:tache_food/Pages/TacheMenu/CakeMenu.dart';
import 'package:tache_food/Pages/TacheMenu/ChickenMenu.dart';
import 'package:tache_food/Pages/TacheMenu/DrinksMenu.dart';
import 'package:tache_food/Pages/TacheMenu/FriesMenu.dart';
import 'package:tache_food/Pages/TacheMenu/PizzaMenu.dart';
import 'package:tache_food/Pages/TacheMenu/SaladMenu.dart';
import 'Pages/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tache Restaurant - Home",
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
        "burgerMenu": (context) => BurgerMenu(),
        "saladMenu": (context) => SaladMenu(),
        "friesMenu": (context) => FriesMenu(),
        "drinkMenu": (context) => DrinksMenu(),
        "chickenMenu": (context) => ChickenMenu(),
        "cakeMenu": (context) => CakeMenu(),

        // Newest Page
        "firstNewItem": (context) => FirstNewItem(),
        "secondNewItem": (context) => SecondNewItem(),
        "thirdNewItem": (context) => ThirdNewItem(),
        "fourthNewItem": (context) => FourthNewItem(),
        "fifthNewItem": (context) => FifthNewItem(),
        "sixthNewItem": (context) => SixthNewItem(),
        "seventhNewItem": (context) => SeventhNewItem(),
      },
    );
  }
}
