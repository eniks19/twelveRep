import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Buton3 extends StatelessWidget {
  const Buton3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffEFAE07),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(left: 100, right: 100, top: 24, bottom: 24),
      child: Text(
        'Create Account',
        style: TextStyle(
          color: Color(0xffFFFFFF),
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
    );
  }
}
