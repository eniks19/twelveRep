import 'package:flutter/material.dart';
import 'package:paps/models/model.dart';

class Cart extends ChangeNotifier {
  List<Food> foodItems = [
    Food(
      img: 'lib/asset/banana.png',
      name: 'Breakfast',
    ),
    Food(img: 'lib/asset/seafood.png', name: 'Lunch'),
    Food(img: 'lib/asset/rice.png', name: 'Dinner'),
    Food(img: 'lib/asset/oatcake.png', name: 'Dessert'),
    Food(img: 'lib/asset/tea.png', name: 'Drinks'),
    Food(img: 'lib/asset/fruit.png', name: 'Best Deals'),
  ];

  List<Food> getfoodItems() {
    return foodItems;
  }
}
