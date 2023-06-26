import 'package:flutter/material.dart';
import 'package:paps/models/modeltwo.dart';
import 'package:paps/models/providertwo.dart';
import 'package:paps/screens/cart/cartitem.dart';
import 'package:provider/provider.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Botlis>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            child: Column(
              children: [
                Text(
                  'Cart',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    // height: 100,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: value.getcartItem().length,
                        itemBuilder: (context, index) {
                          List<Botom> foodlist = value.bottomList()[index];
                          return CartItem(oshoe: foodlist[index]);
                        }),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
