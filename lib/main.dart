import 'package:flutter/material.dart';
import 'package:tache_food/Pages/Cart.dart';
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
      },
    );
  }
}
