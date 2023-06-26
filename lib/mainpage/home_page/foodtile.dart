import 'package:flutter/material.dart';
import 'package:paps/models/model.dart';

class FoodTile extends StatelessWidget {
  Food food;
  void Function()? onTap;
  FoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        //  height: 100,
        //  margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            // color: Colors.grey[200],
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black),
            image:
                DecorationImage(image: AssetImage(food.img), fit: BoxFit.fill)),

        child: Center(
          child: Text(
            food.name,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Color(0xff333333),
            ),
          ),
        ),
      ),
    );
  }
}
