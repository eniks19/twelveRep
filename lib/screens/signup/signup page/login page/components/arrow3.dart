import 'package:flutter/material.dart';

class Arrow3 extends StatelessWidget {
  const Arrow3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 21),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Color(0xff333333), shape: BoxShape.circle),
              padding: EdgeInsets.all(19),
              child: Image.asset(
                'lib/asset/arrow.png',
                height: 22,
                // width: 22,
              )),
          Text(
            'Log in',
            style: TextStyle(
              color: Color(0xffEFAE07),
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
