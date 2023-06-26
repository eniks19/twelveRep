import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyRicText1 extends StatelessWidget {
  const MyRicText1({super.key});

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
            TextSpan(text: 'Did’nt see your email? '),
            TextSpan(
              text: 'Resend',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ]),
    );
  }
}
