import 'package:flutter/material.dart';
import 'package:paps/models/modeltwo.dart';

class Botlis extends ChangeNotifier {
  List<Botom> breakfastList = [
    Botom(imag: 'lib/asset/waffle.jpg', label: 'Waffles', price: '5.00'),
    Botom(
        imag: 'lib/asset/bread-egg.jpg',
        label: 'Bread and Egg Burger',
        price: '4.25'),
    Botom(imag: 'lib/asset/burger.jpg', label: 'Biscuit Burger', price: '5.50'),
    Botom(imag: 'lib/asset/cereal.jpg', label: 'Cereal', price: '5.99'),
    Botom(
        imag: 'lib/asset/hama-chesse_toast.jpg',
        label: 'Ham and Chesse Toast',
        price: '7.95'),
    Botom(imag: 'lib/asset/pancake.jpg', label: 'Pancakes', price: '4.0'),
    Botom(
        imag: 'lib/asset/toast.jpg',
        label: 'Mixed Toasted Steak Bread',
        price: '3.5'),
    Botom(imag: 'lib/asset/sandwich.jpg', label: 'Sandwich', price: '5.25'),
  ];

  List<Botom> lunchList = [
    Botom(imag: 'lib/asset/waffle.jpg', label: 'Waffles', price: '5'),
    Botom(
        imag: 'lib/asset/bread-egg.jpg',
        label: 'Bread and Egg Burger',
        price: '5'),
    Botom(imag: 'lib/asset/burger.jpg', label: 'Burger', price: '5'),
    Botom(imag: 'lib/asset/cereal.jpg', label: 'Cereal', price: '5'),
    Botom(
        imag: 'lib/asset/hama-chesse_toast.jpg',
        label: 'Ham and Chesse Toast',
        price: '5'),
    Botom(imag: 'lib/asset/pancake.jpg', label: 'Pancakes', price: '5'),
    Botom(imag: 'lib/asset/toast.jpg', label: 'Toasted Bread', price: '5'),
    Botom(imag: 'lib/asset/sandwich.jpg', label: 'Sandwich', price: '5'),
  ];
  List<Botom> dinnerList = [
    Botom(imag: 'lib/asset/waffle.jpg', label: 'Waffles', price: '5'),
    Botom(
        imag: 'lib/asset/bread-egg.jpg',
        label: 'Bread and Egg Burger',
        price: '5'),
    Botom(imag: 'lib/asset/burger.jpg', label: 'Burger', price: '5'),
    Botom(imag: 'lib/asset/cereal.jpg', label: 'Cereal', price: '5'),
    Botom(
        imag: 'lib/asset/hama-chesse_toast.jpg',
        label: 'Ham and Chesse Toast',
        price: '5'),
    Botom(imag: 'lib/asset/pancake.jpg', label: 'Pancakes', price: '5'),
    Botom(imag: 'lib/asset/toast.jpg', label: 'Toasted Bread', price: '5'),
    Botom(imag: 'lib/asset/sandwich.jpg', label: 'Sandwich', price: '5'),
  ];

  List<Botom> dessertList = [
    Botom(imag: 'lib/asset/waffle.jpg', label: 'Waffles', price: '5'),
    Botom(
        imag: 'lib/asset/bread-egg.jpg',
        label: 'Bread and Egg Burger',
        price: '5'),
    Botom(imag: 'lib/asset/burger.jpg', label: 'Burger', price: '5'),
    Botom(imag: 'lib/asset/cereal.jpg', label: 'Cereal', price: '5'),
    Botom(
        imag: 'lib/asset/hama-chesse_toast.jpg',
        label: 'Ham and Chesse Toast',
        price: '5'),
    Botom(imag: 'lib/asset/pancake.jpg', label: 'Pancakes', price: '5'),
    Botom(imag: 'lib/asset/toast.jpg', label: 'Toasted Bread', price: '5'),
    Botom(imag: 'lib/asset/sandwich.jpg', label: 'Sandwich', price: '5'),
  ];

  List<Botom> drinkList = [
    Botom(imag: 'lib/asset/waffle.jpg', label: 'Waffles', price: '5'),
    Botom(
        imag: 'lib/asset/bread-egg.jpg',
        label: 'Bread and Egg Burger',
        price: '5'),
    Botom(imag: 'lib/asset/burger.jpg', label: 'Burger', price: '5'),
    Botom(imag: 'lib/asset/cereal.jpg', label: 'Cereal', price: '5'),
    Botom(
        imag: 'lib/asset/hama-chesse_toast.jpg',
        label: 'Ham and Chesse Toast',
        price: '5'),
    Botom(imag: 'lib/asset/pancake.jpg', label: 'Pancakes', price: '5'),
    Botom(imag: 'lib/asset/toast.jpg', label: 'Toasted Bread', price: '5'),
    Botom(imag: 'lib/asset/sandwich.jpg', label: 'Sandwich', price: '5'),
  ];

  List<Botom> fruitList = [
    Botom(imag: 'lib/asset/waffle.jpg', label: 'Waffles', price: '5'),
    Botom(
        imag: 'lib/asset/bread-egg.jpg',
        label: 'Bread and Egg Burger',
        price: '5'),
    Botom(imag: 'lib/asset/burger.jpg', label: 'Burger', price: '5'),
    Botom(imag: 'lib/asset/cereal.jpg', label: 'Cereal', price: '5'),
    Botom(
        imag: 'lib/asset/hama-chesse_toast.jpg',
        label: 'Ham and Chesse Toast',
        price: '5'),
    Botom(imag: 'lib/asset/pancake.jpg', label: 'Pancakes', price: '5'),
    Botom(imag: 'lib/asset/toast.jpg', label: 'Toasted Bread', price: '5'),
    Botom(imag: 'lib/asset/sandwich.jpg', label: 'Sandwich', price: '5'),
  ];

  List<Botom> cartItem = [];

  List<List<Botom>> bottomList() {
    return [
      breakfastList,
      lunchList,
      dinnerList,
      dessertList,
      drinkList,
      fruitList
    ];
  }

  List<Botom> getcartItem() {
    return cartItem;
  }

  void addCart(Botom botom) {
    cartItem.add(botom);
    notifyListeners();
  }

  void removeCart(Botom botom) {
    cartItem.remove(botom);
    notifyListeners();
  }
}
