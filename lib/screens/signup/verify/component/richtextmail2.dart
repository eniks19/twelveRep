import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyRicText2 extends StatelessWidget {
  const MyRicText2({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          children: <TextSpan>[
            TextSpan(text: 'Having trouble? '),
            TextSpan(
              text: 'Contact',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ]),
    );
  }
}
