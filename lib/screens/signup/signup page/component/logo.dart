import 'package:flutter/material.dart';

class MyLogo extends StatelessWidget {
  const MyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.09),
          child: Container(
            height: 64.71,
            child: Image.asset(
              'lib/asset/cookie.png',
              // height: 120,
              //fit: BoxFit.contain,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Eat',
              style: TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
                fontSize: 31.06,
              ),
            ),
            Text(
              'Bits',
              style: TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
                fontSize: 31.06,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
