import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(0xff000000),
            ),
          ),
          filled: true,
          //fillColor: Color(0xff000000),
          contentPadding: EdgeInsets.all(29),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xff000000),
            fontWeight: FontWeight.w300,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
