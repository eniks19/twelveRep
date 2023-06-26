import 'package:flutter/material.dart';

class ButtonTwo extends StatelessWidget {
  const ButtonTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xffFFFFFF),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                offset: Offset(2, 2), //position of the shadow
                blurRadius: 6, //thickness of the shadow
                blurStyle: BlurStyle.outer,
                //  spreadRadius: 1,
              ),
            ]),
        padding: EdgeInsets.symmetric(horizontal: 71, vertical: 17),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/asset/google.png',
              height: 23, //both the width and height have the same effect here
              //width: 23,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Sign in with Google',
              style: TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
