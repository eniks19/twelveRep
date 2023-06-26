import 'package:flutter/material.dart';
import 'package:paps/screens/signup/verify/verifymail.dart';

class Buton2 extends StatelessWidget {
  void Function()? onTap;
  Buton2({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        // onTap: () => Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => MyVerify(),
        //   ),
        // ),
        onTap: onTap,

        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffEFAE07),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.only(left: 150, right: 150, top: 24, bottom: 24),
          child: Text(
            'Log in',
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
