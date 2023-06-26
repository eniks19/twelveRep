import 'package:flutter/material.dart';

class MyArrow extends StatelessWidget {
  const MyArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 21),
      child: Container(
          decoration:
              BoxDecoration(color: Color(0xff333333), shape: BoxShape.circle),
          padding: EdgeInsets.all(19),
          child: Image.asset(
            'lib/asset/arrow.png',
            height: 22,
            // width: 22,
          )),
    );
  }
}
