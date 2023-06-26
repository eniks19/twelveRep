import 'package:flutter/material.dart';
import 'package:paps/models/modeltwo.dart';

class CartItem extends StatefulWidget {
  Botom oshoe;
  CartItem({super.key, required this.oshoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.oshoe.imag),
        title: Text(widget.oshoe.label),
        subtitle: Text('\$' + widget.oshoe.price),
        // trailing: GestureDetector(
        //     onTap: () => removeItem(), child: Icon(Icons.delete)),
      ),
    );
  }
}
