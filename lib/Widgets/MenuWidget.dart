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
        child: Row(children: [
          //Single Item
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
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
                    )
                  ]),
              child: Image.asset(
                "images/pizza/pizza1.png",
                width: 50,
                height: 50,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
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
                    )
                  ]),
              child: Image.asset(
                "images/burger/burger1.png",
                width: 50,
                height: 50,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
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
                    )
                  ]),
              child: Image.asset(
                "images/chicken/chicken1.png",
                width: 50,
                height: 50,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
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
                    )
                  ]),
              child: Image.asset(
                "images/fries/fries1.png",
                width: 50,
                height: 50,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
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
                    )
                  ]),
              child: Image.asset(
                "images/drinks/drinks1.png",
                width: 50,
                height: 50,
              ),
            ),
          ),

          // Next Component
        ]),
      ),
    );
  }
}
