import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Arrow4 extends StatelessWidget {
  const Arrow4({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 21),
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
